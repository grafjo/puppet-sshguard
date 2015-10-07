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
  String $package_name           = $sshguard::params::package_name,
  String $package_version        = $sshguard::params::package_version,
  String $manage_service_ensure  = $sshguard::params::manage_service_ensure,
  Boolean $manage_service_enable = $sshguard::params::manage_service_enable,
  Integer $enable_firewall       = $sshguard::params::enable_firewall,
  Array[String] $logfiles        = $sshguard::params::logfiles,
  Array[String] $whitelist       = $sshguard::params::whitelist,
  Integer $safety_thresh         = $sshguard::params::safety_thresh,
  Integer $pardon_min_interval   = $sshguard::params::pardon_min_interval,
  Integer $prescribe_interval    = $sshguard::params::prescribe_interval,
) inherits sshguard::params {

  class {'sshguard::install': } ->
  class {'sshguard::config': } ~>
  class {'sshguard::service': } ->
  Class['sshguard']

}
