node default {
  file { '/home/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}



