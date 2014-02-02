# == Class: sshguard::params
#
# === Authors
#
# Johannes Graf <graf.johannes@gmail.com>
#
# === Copyright
#
# Copyright 2014 Johannes Graf
#
class sshguard::params {

  $package_name = $::osfamily ? {
    'Debian' => 'sshguard',
    default  => fail("${::osfamily} is not supported by ${module_name}")
  }

  $package_version = 'installed'
}
