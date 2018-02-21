class puppet::config inherits puppet::params {
    file { "${puppet_conf_dir}/puppet.conf":
        ensure   => file,
        owner    => 'root',
        group    => 'root',
        mode     => '0644',
        content  => template( 'puppet/etc/puppet/puppet.conf.erb' ),
    }
}
