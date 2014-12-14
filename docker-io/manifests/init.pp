# Class: docker-io
#
# This module manages docker-io
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class docker-io {
  case $osfamily {
    'RedHat': {
      case $operatingsystem {
        'Fedora': {
          if $operatingsystemmajrelease >= 19 {
            package { 'docker-io': ensure => 'installed', }
          }
        }
        'RedHat', 'CentOS': {
          if $operatingsystemmajrelease >= 6 {
            package { 'docker-io': ensure => 'installed', }
          }
        }
      }
    }
    'Debian': {
      package { 'docker.io': ensure => 'installed', }
    }
  }
}