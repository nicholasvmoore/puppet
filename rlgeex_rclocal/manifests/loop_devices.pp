class rlgeex_rclocal::disable_tcpoffloading inherits rlgeex_rclocal::params {
  
  define loop_devices {
	  file_line { $name:
	    ensure  => present,
	    path    => "/etc/rc.local",
	    line    => ["MAKEDEV -v /dev/loop"]
	  }
  }
  
}
