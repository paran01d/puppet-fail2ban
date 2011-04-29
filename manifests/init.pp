
class fail2ban {

  package { "fail2ban" :
    ensure => present,
  }

  
  file { "/etc/fail2ban/fail2ban.conf" :
    ensure  => present,
    require => Package["fail2ban"],
    owner   => "root",
    group   => "root",
    mode    => "640",
    notify  => Service["fail2ban"],
  }
  
  file { "/etc/fail2ban/jail.conf" :
    ensure  => present,
    require => Package["fail2ban"],
    owner   => "root",
    group   => "root",
    mode    => "640",
    notify  => Service["fail2ban"],
  }

  file { "/etc/fail2ban/action.d" :
    ensure  => directory,
    recurse => true,
    owner   => root,
    group   => root,
    mode    => 755,
    require => Package["fail2ban"],
    notify  => Service["fail2ban"],
  }

  file { "/etc/fail2ban/filter.d" :
    ensure  => directory,
    recurse => true,
    owner   => root,
    group   => root,
    mode    => 755,
    require => Package["fail2ban"],
    notify  => Service["fail2ban"],
  }

  service { "fail2ban" :
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => File["/etc/fail2ban/jail.conf"],
  }
}
