class docker-couchpotato {
  docker::image { 'nicholasvmoore/docker-couchpotato':
    ensure => 'present',
  }
  docker::run { 'couchpotato':
    image     => 'nicholasvmoore/docker-couchpotato',
    expose    => ['5050:5050'],
    volumes   => ['/mnt/lun0/media:/media:rw', '/mnt/lun0/software/docker/movies:/config:rw'],
  }
}