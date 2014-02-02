#sshguard
[![Build Status](https://travis-ci.org/grafjo/puppet-sshguard.png?branch=master)](https://travis-ci.org/grafjo/puppet-sshguard)

A Puppet module to install and manage [sshguard](http://www.sshguard.net/)

##Usage

To use this module with the default configuration, just start with this:
```puppet
class { 'sshguard':}
```

All changes can be done via `class {'sshguard':}`. See following parameters

#####`version`
Puppet package ensure - see [Type Reference](http://docs.puppetlabs.com/references/latest/type.html#package-attribute-ensure)

##### `manage_service_ensure`
Puppet service ensure - see [Type Reference](http://docs.puppetlabs.com/references/latest/type.html#service-attribute-ensure)

##### `manage_service_enable`
Puppet service enable - see [Type Reference](http://docs.puppetlabs.com/references/latest/type.html#service-attribute-enable)


### Customize `/etc/sshguard/whitelist`

##### `whitelist`
Array containing addr/host/block e.g `whitelist['127.0.0.0/8','host.example.com']`. Values will be written into `/etc/sshguard/whitelist`. To see some examples check `/usr/share/doc/sshguard/examples/whitelistfile.example`.


### Customize `/etc/default/sshguard`

##### `enable_firewall`
Setting`enable_filewall = 0` will prevent sshguard init script from changing firewall rules - it's your job then!

##### `logfiles`
Array containing logfiles to be scanned by sshguard e.g `logfiles = ['/var/log/auth.log','/var/log/syslog']`.

##### `safety_thresh`
Number of hits after which blocking an address - default is 40.

##### `pardon_min_interval`
Seconds after which unblocking a blocked address - default is 420.

##### `prescribe_interval`
Seconds after which forgetting about a cracker candidate - default is 1200.
