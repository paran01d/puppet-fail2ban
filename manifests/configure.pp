class fail2ban::configure (
	  $jail_local = $fail2ban::params::jail_local
	, $jails = $fail2ban::params::jails
	, $destemail = $fail2ban::params::destemail
	, $ignoreip = ''
) inherits fail2ban::params {

	file { $jail_local :
		ensure => present,
		owner  => "root",
		group  => "root",
		mode   => "640",
		content => template('fail2ban/jail.local.erb'),
	}

	Class['fail2ban::install'] -> Class['fail2ban::configure']
}
