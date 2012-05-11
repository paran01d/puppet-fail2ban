
class fail2ban::params {

	$packages = ['fail2ban']

	$services = ['fail2ban']

	$jail_local = '/etc/fail2ban/jail.local'

	$destemail = ''

	$jails = ['ssh-ddos', 'ssh']

}
