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
        if versioncmp($::operatingsystemrelease, '6.5') < 0 {
          package { "open-vm-tools": ensure => "installed", }
          service { "vmtoolsd": ensure => "running", enable => "true", }
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
