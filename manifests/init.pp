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
  $version               = $sshguard::params::package_version,
  $manage_service_ensure = $sshguard::params::manage_service_ensure,
  $manage_service_enable = $sshguard::params::manage_service_enable,
  $enable_firewall       = $sshguard::params::enable_firewall,
  $logfiles              = $sshguard::params::logfiles,
  $whitelist             = $sshguard::params::whitelist,
  $safety_thresh         = $sshguard::params::safety_thresh,
  $pardon_min_interval   = $sshguard::params::pardon_min_interval,
  $prescribe_interval    = $sshguard::params::prescribe_interval,
) inherits sshguard::params {

  anchor {'sshguard::start': }->
  class {'sshguard::package':
    package => $sshguard::params::package_name,
    version => $version,
  } ~>
  class {'sshguard::configure':
    enable_firewall     => $enable_firewall,
    logfiles            => $logfiles,
    whitelist           => $whitelist,
    safety_thresh       => $safety_thresh,
    pardon_min_interval => $pardon_min_interval,
    prescribe_interval  => $prescribe_interval,
  }~>
  class {'sshguard::service':
    service_name          => $sshguard::params::service_name,
    manage_service_ensure => $manage_service_ensure,
    manage_service_enable => $manage_service_enable,
  } ~>
  anchor {'sshguard::end': }

}
