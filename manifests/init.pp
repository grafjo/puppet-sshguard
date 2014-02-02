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
  $package             = $sshguard::params::package_name,
  $version             = $sshguard::params::package_version,
  $enable_firewall     = $sshguard::params::enable_firewall,
  $logfiles            = $sshguard::params::logfiles,
  $whitelist           = $sshguard::params::whitelist,
  $safety_thresh       = $sshguard::params::safety_thresh,
  $pardon_min_interval = $sshguard::params::pardon_min_interval,
  $prescribe_interval  = $sshguard::params::prescribe_interval,
) inherits sshguard::params {

  anchor {'sshguard::start': }->
  class {'sshguard::package':
    package  => $package_name,
    version  => $package_version,
  } ~>
  class {'sshguard::configure':
    enable_firewall     => $enable_firewall,
    logfiles            => $logfiles,
    whitelist           => $whitelist,
    safety_thresh       => $safety_thresh,
    pardon_min_interval => $pardon_min_interval,
    prescribe_interval  => $prescribe_interval,
  }~>
  class {'sshguard::service': } ~>
  anchor {'sshguard::end': }

}
