
class fail2ban {

    include fail2ban::install
    include fail2ban::configuration
    include fail2ban::service

    Class['fail2ban::package'] ->
    Class['fail2ban::configuration'] ->
    Class['fail2ban::service']

    Class['fail2ban::configuration'] ~> Class['fail2ban::service']

}

