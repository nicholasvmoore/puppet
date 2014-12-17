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

  docker::image { 'nicholasvmoore/docker-couchpotato':
    ensure => 'present',
  }
  docker::run { 'couchpotato':
    image     => 'nicholasvmoore/docker-couchpotato',
    ports    => ['5050:5050'],
    volumes   => ['/mnt/lun0/media:/media:rw', '/mnt/lun0/software/docker/movies:/config:rw'],
  }
}