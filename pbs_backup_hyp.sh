#!/bin/bash
# write crontab entries into a file for backup

crontab -l > /root/root_crontab_entries

# PBS AP KEY
export PBS_REPOSITORY=root@pam!<server>@<pbs_host>:<pbs_storage_name>
export PBS_PASSWORD=<password>
export PBS_FINGERPRINT=<fingerprint pbs host>

export PBS_REPOSITORY
export PBS_PASSWORD
export PBS_FINGERPRINT

# run backup
proxmox-backup-client backup etc.pxar:/etc root_home.pxar:/root  --include-dev /etc/pve
