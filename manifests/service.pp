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
class sshguard::service {

  service { $sshguard::service_name:
    ensure     => $sshguard::manage_service_ensure,
    enable     => $sshguard::manage_service_enable,
    hasstatus  => true,
    hasrestart => true,
  }

}
