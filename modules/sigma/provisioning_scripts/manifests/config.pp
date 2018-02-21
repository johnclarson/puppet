class provisioning_scripts::install inherits provisioning_scripts::params { 
    file { '/usr/share/foreman/config/hook/scripts/puppet_cert_management.sh':
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0755',
        content    => template( 'provisioning_scripts/usr/share/foreman/scripts/puppet_cert_management.sh.erb' ),
        notify     => Service[ 'httpd' ],
    }
}
