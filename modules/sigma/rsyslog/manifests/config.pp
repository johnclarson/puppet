class rsyslog::config inherits rsyslog::params {

    file { '/etc/rsyslog.conf':
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        notify     => Service[ 'rsyslog' ],
        content    => template( 'rsyslog/etc/rsyslog.conf.erb' ),
    }
    if ( $rsyslog_server ) {
        file { '/etc/flafka_jaas.conf':
            ensure     => file,
            owner      => 'flume',
            group      => 'root',
            mode       => '0644',
            content    => template( 'rsyslog/etc/flafka_jaas.conf.erb' ),
        }
    }
}

