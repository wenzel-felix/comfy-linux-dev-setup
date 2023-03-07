# Simple script that installs some dev dependencies


## How to apply it
### Default
```bash
wget -O - https://raw.githubusercontent.com/wenzel-felix/comfy-linux-dev-setup/main/detect_system.sh | bash
```
### Custom settings
```bash
wget https://raw.githubusercontent.com/wenzel-felix/comfy-linux-dev-setup/main/detect_system.sh
chmod +x ./detect_system.sh
./detect_system.sh -u <git username> -m <git email>
```

## Supported/Installed packages
* terraform
* jq
* netstat
* docker
* helm
* kubectl
* azure-cli
## Planned packages / changes
* aws cli
* wrangler
* gcloud
* other
    * add set of aliases
    * add functions
