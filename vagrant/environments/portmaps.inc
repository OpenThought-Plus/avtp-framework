_strings="ports_443_8843 ports_443_8843 ports_80_8880 ports_80_8880"

ports_443_8443='config.vm.network \"forwarded_port\", guest: 443, host: 8443'
ports_443_8843='config.vm.network \"forwarded_port\", guest: 443, host: 8843'

ports_80_8800='config.vm.network \"forwarded_port\", guest: 80, host: 8800'
ports_80_8880='config.vm.network \"forwarded_port\", guest: 80, host: 8880'


dev_default="ports_443_8443 ports_80_8800"
test_default="ports_443_8843 ports_80_8880"
