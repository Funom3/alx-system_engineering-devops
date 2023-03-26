# seting up the client config file
include stdlib

file_line { 'Turn off the auth':
	ensure => present,
	path   => '/etc/ssh/ssh_config',
	line   => '	PasswordAuthentication no',
	replace => true,
}
file_line { 'Declare identity file':
	ensure => present,
	path   => 'etc/ssh/ssh_config',
	line   => '	IdentidyFile ~/.ssh/school',
	replace => true,
}
