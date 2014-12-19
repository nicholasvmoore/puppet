# Class: open-vm-tools
#
# This module manages open-vm-tools
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#

class open-vm-tools {
  if $is_virtual {
    case $operatingsystem {
      'RedHat', 'CentOS': {
        case $operatingsystemmajrelease {
          '6': {
            package { 'open-vm-tools':
              ensure => 'installed',
            }
            service { 'vmtoolsd':
              ensure => 'running',
              enable => 'true',
            }
            package['open-vm-tools'] -> service['vmtoolsd']
          }
          '7': {
            package { 'open-vm-tools': ensure => 'installed', }
            service { 'vmtoolsd': ensure => 'running', enable => 'true', }
          }
        }
      }
      'Fedora': {
        if $operatingsystemmajrelease >= 19 {
          package { 'open-vm-tools': ensure => 'installed', }
          service { 'vmtoolsd': ensure => 'running', enable => 'true', }
        }
      }
      'Ubuntu': {
        package { 'open-vm-tools': ensure => 'installed', }
        service { 'open-vm-tools': enable => 'true', restart => 'true', }
      }
    }
  }
}
