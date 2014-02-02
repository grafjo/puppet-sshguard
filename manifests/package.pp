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
class sshguard::package($package, $version) {

  package { $package:
    ensure  => $version,
  }

}
