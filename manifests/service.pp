# == Class: sshguard::service
#
# === Authors
#
# Johannes Graf <graf.johannes@gmail.com>
#
# === Copyright
#
# Copyright 2014 Johannes Graf
#
class sshguard::service (
  $service_name,
  $manage_service_ensure,
  $manage_service_enable,
) {

  service { $service_name:
    ensure     => $manage_service_ensure,
    enable     => $manage_service_enable,
    hasstatus  => true,
    hasrestart => true,
  }

}
