class open-vm-tools {
  if $is_virtual {
    case $operatingsystem {
      'RedHat', 'CentOS': {
        if $operatingsystemmajrelease >= 7 {
          package { "open-vm-tools": ensure => "installed" }
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
        if $operatingsystemmajrelease >= 10.04 {
          package { 'open-vm-tools': ensure => 'installed', }
          service { 'open-vm-tools': ensure => 'running', enable => 'true', }
        }
      }
    }
  }
}
