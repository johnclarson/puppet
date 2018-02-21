class base::sssd inherits base::params {

    augeas { 'selinux_provider':
        context   => '/files/etc/sssd/sssd.conf/target[1]/',
        changes   => "set selinux_provider none"
    }

}
