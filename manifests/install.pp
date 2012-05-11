
class fail2ban::install (
	$packages = $fail2ban::params::packages
) inherits fail2ban::params {

	package { $packages :
		ensure => present,
	}

}

