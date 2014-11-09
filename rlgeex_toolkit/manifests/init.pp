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
  $tools = [ "zsh", "htop", "screen", "tmux", "vim-enhanced", "nano", "tcpdump", "sudo", "perl", "python", "bind-utils", "mlocate", "xfsprogs", "yum-plugin-priorities", "subversion", "nfs-utils", "at", "man", "net-snmp"]

  package { $tools: ensure => "installed" }

}
