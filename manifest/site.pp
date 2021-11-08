node default {
  file { '/home/vagrant/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}



