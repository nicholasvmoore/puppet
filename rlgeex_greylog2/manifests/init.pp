# Class: rlgeex_greylog2
#
# This module manages rlgeex_greylog2
#
# Parameters: none
#
# Actions:  To install the necessary components for building graylog2, I'm going to see if I can get puppet to compile the software :)
#
# Requires: see Modulefile
#
# Sample Usage:
#
class rlgeex_greylog2 {
  case $operatingsystem {
    'CentOS', 'RedHat', 'Fedora': { $tools = [ "make", "wget", "java-1.7.0-openjdk", "openssl-devel", "libyaml-devel", "httpd", "git", "ImageMagick", "ImageMagick-devel", "libxml2-devel", "libxslt-devel", "gcc-c++", "curl-devel", "httpd-devel", "apr-devel", "apr-util-devel"] }
    'Debian', 'Ubuntu': { $tools = [ "build-essential" ] }
    default:  { $tools = undef}
  }
    
  package { $tools: ensure => "installed" }

}
