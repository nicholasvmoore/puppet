class rlgeex_rclocal::disable_tcpoffloading inherits rlgeex_rclocal::params {
  
  define disable_offloading {
	  file_line { $name:
	    ensure  => present,
	    path    => "/etc/rc.local",
	    line    => ["ethtool -K ${name} rx off tx off gro off gso off"]
	  }
  }
  
  disable_offloading { $ifs: }
  
}
