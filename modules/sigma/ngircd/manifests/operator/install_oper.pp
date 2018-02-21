define ngircd::operator::install_oper (
    $password
    )  {
    file { "/etc/ngircd.conf.d/${name}-operator.conf":
        ensure      => file,
        owner       => 'root',
        group       => 'root',
        mode        => '0644',
        notify      => Service[$ngircd::params::service_name],
        content     => template( 'ngircd/etc/ngircd.conf.d/operator.erb' )
    }
}

