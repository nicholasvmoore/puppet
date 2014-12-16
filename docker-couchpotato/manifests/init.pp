class docker-couchpotato {
  include docker::image
  include docker::run
  include docker-io

  docker::image { 'nicholasvmoore/docker-couchpotato':
    ensure => 'present',
  }

}