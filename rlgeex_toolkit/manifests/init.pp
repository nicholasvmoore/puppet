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
  $tools = [ "zsh", "htop", "screen", "tmux", "vim", "nano", "tcpdump", "sudo", "perl", "python", "bind-utils", "mlocate", "ntp", "snmp", "xfsprogs", "yum-plugin-priorities", "svn", "nfs-utils", "at", "man", "net-snmp"]    

  package { $tools: ensure => "installed" }

}
