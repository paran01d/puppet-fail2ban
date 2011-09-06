
class fail2ban::configuration {
  
	file { "/etc/fail2ban/fail2ban.conf" :
		ensure  => present,
		owner   => "root",
		group   => "root",
		mode    => "640",
	}

	file { "/etc/fail2ban/jail.conf" :
		ensure  => present,
		owner   => "root",
		group   => "root",
		mode    => "640",
	}

	file { "/etc/fail2ban/action.d" :
		ensure  => directory,
		recurse => true,
		owner   => root,
		group   => root,
	}

	file { "/etc/fail2ban/filter.d" :
		ensure  => directory,
		recurse => true,
		owner   => root,
		group   => root,
	}

}

