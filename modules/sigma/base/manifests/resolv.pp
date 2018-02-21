class base::resolv inherits base::params {
    file { '/etc/resolv.conf':
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        content    => template( 'base/etc/resolv.conf.erb' ),
     }
}
