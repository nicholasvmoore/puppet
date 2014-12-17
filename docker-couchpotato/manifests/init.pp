class docker-couchpotato {
  docker::image { 'nicholasvmoore/docker-couchpotato':
    ensure => 'present',
  }
  docker::run { 'couchpotato':
    image     => 'docker-couchpotato',
    ports     => ['5050'],
    expose    => ['5050'],
    volumes   => ['/mnt/lun0/media', '/media', '/mnt/lun0/software/docker/movies', 'config'],
  }
}