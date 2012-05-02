# Class: gitolite
#
# This module manages gitolite
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class gitolite {

  include gitolite::user

  exec { 'initialize_gitolite':
    command => 'gl-setup -q /home/git/.ssh/id_rsa.pub',
    path    => '/usr/bin',
    user    => 'git',
    creates => '/var/lib/gitolite/repositories/gitolite-admin.git/',
  }

}
