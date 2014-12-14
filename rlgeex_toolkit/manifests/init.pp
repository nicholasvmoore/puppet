# Class: rlgeex_toolkit
#
# This module manages rlgeex_toolkit
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class rlgeex_toolkit {
  case $osfamily {
    'RedHat': {
      $tools = [ 'zsh', 'htop', 'screen', 'tmux', 'vim-enhanced', 'nano', 'tcpdump', 'sudo', 'perl', 'python', 'bind-utils', 'mlocate', 'xfsprogs', 'yum-plugin-priorities', 'subversion', 'nfs-utils', 'at', 'net-snmp']
    }
    'Debian': {
      $tools = [ 'zsh', 'htop', 'screen', 'tmux', 'vim-enhanced', 'nano', 'tcpdump', 'sudo', 'perl', 'python', 'bind-utils', 'mlocate', 'xfsprogs', 'subversion', 'at', 'nfs-common', 'vim-puppet', 'vim-addon-manager', 'vim', 'vim-common', 'snmpd']
    }
  }
  package { $tools: ensure => 'installed' }
}
