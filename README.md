# workstation-setup

## Post Install

- `sudo dnf -y update && sudo dnf install -y git ansible`
- `mkdir -p ~/projects/brabster && cd ~/projects/brabster && git clone https://github.com/brabster/workstation-setup.git`
- `cd workstation-setup && ansible-playbook -K workstation.yml`
