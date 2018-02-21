class base::krb inherits base::params {
    file_line { 'disable keyring storage for kerberos credentials':
        path      => '/etc/krb5.conf',
        line      => '#  default_ccache_name = KEYRING:persistent:%{uid} ## PUPPET::base::krb: disable keyring storage for kerberos credentials',
        match     => '^\s*default_ccache_name',
        ensure    => present,
    }
}
