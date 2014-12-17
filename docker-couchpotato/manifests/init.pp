class docker-couchpotato {

  file { '/mnt/lun0':
    ensure => 'directory',
  }

  file { '/mnt/lun0/software':
    ensure => 'directory',
  }

  file { '/mnt/lun0/media':
    ensure => 'directory',
  }

  fstab { 'mnt-lun-media':
    source => 'freenas:/mnt/lun0/media',
    dest   => '/mnt/lun0/media',
    type   => 'nfs',
    opts   => 'defaults,noatime',
    dump   => 0,
    passno => 0,
  }

  fstab { 'mnt-lun-software':
    source => 'freenas:/mnt/lun0/software',
    dest   => '/mnt/lun0/software',
    type   => 'nfs',
    opts   => 'defaults,noatime',
    dump   => 0,
    passno => 0,
  }

  docker::image { 'nicholasvmoore/docker-couchpotato':
    ensure => 'present',
  }
  docker::run { 'couchpotato':
    image     => 'nicholasvmoore/docker-couchpotato',
    ports    => ['5050:5050'],
    volumes   => ['/mnt/lun0/media:/media:rw', '/mnt/lun0/software/docker/movies:/config:rw'],
  }
}