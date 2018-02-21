class base::sshd inherits base::params {

    file { '/etc/ssh/sshd_config':
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        content    => template( 'base/etc/ssh/sshd_config.erb' ),
        notify     => Service[ 'sshd' ],
    }

    service{ 'sshd':
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        ensure     => running,
    }

}
