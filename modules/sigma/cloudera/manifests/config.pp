class cloudera::config inherits cloudera::params {

    file { '/etc/cloudera-scm-agent/config.ini':
        ensure  => 'file',
        content => template("cloudera/etc/cloudera-scm-agent/config.ini.erb")
    }

    if ( $cloudera_ssh_authorized_keys != undef ) {
        create_resources( 'ssh_authorized_key', $cloudera_ssh_authorized_keys )
    }

}
