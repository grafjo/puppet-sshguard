# == Class: sshguard
#
# === Authors
#
# Johannes Graf <graf.johannes@gmail.com>
#
# === Copyright
#
# Copyright 2014 Johanns Graf
#
class sshguard (
  $package      = $sshguard::params::package_name,
  $version      = $sshguard::params::package_version,
) inherits sshguard::params {

  anchor {'sshguard::start': }->
  class {'sshguard::package':
    package  => $package_name,
    version  => $package_version,
  } ~>
  class {'sshguard::configure':
  }~>
  class {'sshguard::service': } ~>
  anchor {'sshguard::end': }

}
