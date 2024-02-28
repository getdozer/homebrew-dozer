import requests, hashlib, os

def calculate_sha256(url):
    print(f'Calculating SHA256 for {url}')
    asset = requests.get(url)
    result = hashlib.sha256(asset.content).hexdigest()
    print(f'SHA256: {result}')
    return result

# Get latest version from GitHub
latest_release = requests.get('https://api.github.com/repos/getdozer/dozer/releases/latest').json()
latest_tag = latest_release['tag_name']
latest_version = latest_tag.lstrip('v')

# Read formula to text
formula = open('Formula/dozer.rb', 'r').read()

# Parse version from formula
current_version = formula.split('version "')[1].split('"')[0]

# If up to date, exit
if current_version == latest_version:
    print("Formula is up to date")
    exit(0)

# Replace version in formula
formula = formula.replace(current_version, latest_version)

for asset_name in ['dozer-macos-aarch64.tar.gz', 'dozer-macos-amd64.tar.gz']:
    # Calculate current SHA256
    current_sha256 = calculate_sha256(f'https://github.com/getdozer/dozer/releases/download/v{current_version}/{asset_name}')
    
    # Get asset download URL
    asset_url = None
    for asset in latest_release['assets']:
        if asset['name'] == asset_name:
            asset_url = asset['browser_download_url']
            break
    
    if asset_url is None:
        print(f'Could not find {asset_name} in latest release')
        continue

    # Calculate new SHA256
    new_sha256 = calculate_sha256(asset_url)

    # Replace SHA256 in formula
    formula = formula.replace(current_sha256, new_sha256)

# Write formula to file
open('Formula/dozer.rb', 'w').write(formula)

# Commit
os.system('git add Formula/dozer.rb')
os.system(f'git commit -m "Update to v{latest_version}"')
print(f'Updated to v{latest_version}')
