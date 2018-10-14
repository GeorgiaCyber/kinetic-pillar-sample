## kvm_disk_config
## type: raidX, where X is 1 or 10.  raid1 must have 2 members entries in the list.  raid10 must have a multiple of 2 members in the list
## type: standard.  May pass a device (e.g. /dev/sdb) as a single member, or pass the special value 'rootfs' as a single member, which will
## just create a directory on the root filesystem at /kvm


hosts:
  cache:
    macs:
      - 0c:c4:7a:da:0e:44
      - 00:02:c9:56:b8:86
    interface: auto
    proxy: "''"
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sda
    ipmi_addresses:
      - 10.0.1.190
  controller:
    macs:
      - 0c:c4:7a:da:12:cc 
      - 00:02:c9:56:ad:ec
    interface: auto
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sda 
    ipmi_addresses:
      - 10.0.1.162
    kvm_disk_config:
      type: raid1
      members:
        - /dev/loop0
        - /dev/loop1
    networks:
      management: enp0s20f0
      sfe: enp0s20f1
      private: enp0s20f2
      public: enp0s20f3
