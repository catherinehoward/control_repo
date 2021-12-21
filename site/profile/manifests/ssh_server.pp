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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQ3RbraKsrAxbuajr399AsFoixvrHBFsEd2KMj7dUJWc0zpxsX8khw7HgMJ9/r3SzEDTLAYbNRHO5+SdYtQpnq9P0TF4wMSVVHqlLEK+zu3THb3UnpZ2h0X+0oHqnBG1o/p7CkVKEXaoE9JF5x4r64VN6n+b18nf3kYVll3SSHt1IzINh7VH6w1c8+kDjfdLIwpilFhvfW+3oIhePvJAuHQLLkDTbcgbEVqhgMN5Kzp8QTzMKeAFpDKzb2HHhRfO6wyZQk0firZ5L+D3O2h1QGw6LSvUnVXQiX40FYBmQEESiYCuHVMLpAe0tTFnbKH2MELz1l7drKkpMiMxQgPFnn',
	}  
}
