class autofs::config inherits autofs::params {
    file { '/etc/auto.master':
        path    => '/etc/auto.master',
        mode    => '0644',
        owner   => 'root', 
        source  => 'puppet://modules/autofs/auto.master',
        notify  => Service['autofs']
    }

    file {'/etc/auto.home':
        path     => '/etc/auto.home',
        mode     => '0644',
        owner    => 'root',
        content  => template('autofs/etc/auto.home.erb' ),
        notify   => Service['autofs']
     }
}
