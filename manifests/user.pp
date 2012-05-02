# Class: gitolite::user
#
# This module manages the gitolite user
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

}
