Post-Install

Configure /etc/:
- doas.conf: permit persit user as root, permit nopass user as root cmd /sbin/shutdown 
- installurl
- hostname.iwx0 (or any network device)
- fstab (add softdep, noatime)
- rc.conf.local (set sndiod_flag=-f rsnd/1)
- add user to staff group then adjust login.conf

Restore packages and configurations:
- Install git
- Clone repo
- pkg_add -l installed_packages
- Restore configs

