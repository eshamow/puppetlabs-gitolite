# Class: gitolite::user
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
class gitolite::user {

  user { 'git':
    ensure     => present,
    shell      => '/bin/sh',
    comment    => 'gitolite',
    managehome => true,
  }

  exec { 'generate_gitolite_key':
    command => 'ssh-keygen -t rsa -N "" -f /home/git/.ssh/id_rsa',
    path    => '/usr/bin',
    user    => 'git',
    creates => '/home/git/.ssh/id_rsa',
  }

}
