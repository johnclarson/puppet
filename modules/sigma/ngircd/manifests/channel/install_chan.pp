define ngircd::channel::install_chan (
    $topic
    )  {
    file { "/etc/ngircd.conf.d/${name}-channel.conf":
        ensure      => file,
        owner       => 'root',
        group       => 'root',
        mode        => '0644',
        notify      => Service[$ngircd::params::service_name],
        content     => template( 'ngircd/etc/ngircd.conf.d/channel.erb' )
    }
}

