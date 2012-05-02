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

  user { 'git':
    ensure     => present,
    shell      => '/bin/sh',
    comment    => 'gitolite',
    managehome => true,
  }

}
