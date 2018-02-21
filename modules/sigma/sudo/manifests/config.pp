class sudo::config inherits sudo::params {
    file { '/etc/sudoers':
        ensure   => file,
        owner    => 'root',
        group    => 'root',
        mode     => '0440',
        content  => template( 'sudo/etc/sudoers.erb' ),
    }
}
