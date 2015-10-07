# == Class: sshguard::package
#
# === Authors
#
# Johannes Graf <graf.johannes@gmail.com>
#
# === Copyright
#
# Copyright 2014 Johanns Graf
#
class sshguard::install {

  package { $sshguard::package_name:
    ensure  => $sshguard::package_version,
  }

}
