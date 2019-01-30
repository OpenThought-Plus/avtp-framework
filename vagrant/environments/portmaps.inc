_strings="ports_443_8443 ports_80_8800"

ports_443_8443="config.vm.network forwarded_port, guest: 443, host: 8443"
ports_80_8800="config.vm.network forwarded_port, guest: 80, host: 8800"

dev_default="ports_443_8443 ports_80_8800"
