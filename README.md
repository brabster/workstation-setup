# workstation-setup

For Fedora 31, XFCE spin

## Usage

```
sudo sh -c 'sudo dnf -y update &&
  sudo dnf install -y git ansible &&
  mkdir -p ~/projects/brabster &&
  cd ~/projects/brabster &&
  git clone https://github.com/brabster/workstation-setup.git &&
  (cd workstation-setup &&
    ansible-galaxy install -r requirements.yml &&
    ansible-playbook -vv workstation.yml &&
    git remote rm origin &&
    git remote add origin )' 
```

## Post-Install

- `cat ~/Downloads/eicar.com` (should fail with permissions issue)
- ExpressVPN activate
- Log into LastPass, set autofill to false
