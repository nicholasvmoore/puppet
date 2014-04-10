# Class: rlgeex_rclocal
#
# This module manages rlgeex_rclocal
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class rlgeex_rclocal (
  
) inherits rlgeex_rclocal::params {
  file { 'rc.local':
    ensure  => file,
    path    => $rlgeex_rclocal::params::rclocal_file,
    owner   => $rlgeex_rclocal::params::owner,
    group   => $rlgeex_rclocal::params::group,
    mode    => '0755',
    content => template('rlgeex_rclocal/rc.local.erb'),
  }
}
