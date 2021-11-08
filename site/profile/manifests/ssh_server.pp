class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDElKsur2YgmUdg9tSuasKaWKN6vgHLfavpHLvTi0YspvbYOMs4YjkOmxQLU65b7Th1NrJpYiUNFLyBAMJV9YzWG+2MvWNDX8ScJ/FcOqo61khaaOROw1kUUv8ZhFWlkg8h289VYhgtfchSBaZpvXVIhKFmrN1W9B3Zj2TnGNd5E570oXMI/Mnk51KWNja5ITCiNbMhwh28O9nEdy6RLqEC1gUNqsyhsEXY5kLQVkFoS4BvDNZt1D3atnvDIMVbhz3mh+BTRQSiPwwc5zcFAuzIoUQDqA4+uUXI8RR872ipvKhB6/8FAuvfnHlhZ7VZ8qucP2CgprsCi23EgKFu4dpf',
	}  
}
