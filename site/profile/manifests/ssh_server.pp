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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC38uov4KFE2HY0sLhnqTM4F4mtFqxCDCX6dDhn8jAocwrFgs01ZLtB13HsGxOLy/pUpby/oLXIpPyfw99GqmIlR4hdEpXjc0u5QSUTi2dzu0X30ME1rOfgfuM0jffiTNBv/Z6xTYLgybeF9w0ekDyKOP5lCRFLdp34Fc3tpfBIcWRU0XM8vlg8crswIfU8g4DThmnNn7glLjzFWwUtpR7z7bTOCf9+qjQaUieINAkD6hL05IIBWUIan5h4WuOmoylYCfOC4jMsQuvLJ/ITH0XubcvAEqww3tiI7mKPyubgHUZYRnMGA7rHMh3FQj/gl87C+/WzDbKfAZb16/MJEOH/',
	}  
}
