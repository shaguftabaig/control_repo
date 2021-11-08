node default {
  file { 'Hi':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}


