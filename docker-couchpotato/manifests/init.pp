class docker-couchpotato {
  docker::image { 'nicholasvmoore/docker-couchpotato':
    ensure => 'present',
  }

}