class rlgeex_rclocal::params{
  case $::osfamily {
    'Debian', 'RedHat': {
      $rclocal_file = '/etc/rc.local'
      $owner        = 'root'
      $group        = 'root'
    }
  }
  
  $ifs = delete(split($::interfaces, ','), 'lo')
  
}