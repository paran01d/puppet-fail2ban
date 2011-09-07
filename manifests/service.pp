
class fail2ban::service {

    service { "fail2ban" :
        ensure     => running,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
    }

}

