class open-vm-tools {
  case $operatingsystem {
    'Redhat', 'CentOS': {
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
  }
}
