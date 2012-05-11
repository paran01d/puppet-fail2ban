
class fail2ban::service (
	$services = $fail2ban::params::services
) inherits fail2ban::params {

	service { $services :
		ensure     => running,
		enable     => true,
		hasstatus  => true,
		hasrestart => true,
	}

	Class['fail2ban::configure'] ~> Class['fail2ban::service']

}

