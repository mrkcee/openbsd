Post-Install

Configure /etc/:
- doas.conf
- installurl
- hostname.iwx0 (or any network device)
- fstab (add softdep, noatime)
- rc.conf.local (set sndiod_flag=-f rsnd/1)

Install packages:
- Install git
- Clone repo
- pkg_add -l installed_packages
