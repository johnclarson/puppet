class base::keystore inherits base::params {
    file { "/etc/puppetlabs/puppet/ssl/jks":
        ensure       => directory,
        owner        => 'root',
        group        => 'root',
        mode         => '0700',
    }

    $base_java_keystore_defaults = {
        ensure       => latest,
        password     => 'abc12345678',
        trustcacerts => true,
    }

    create_resources( java_ks, $base_java_keystores, $base_java_keystore_defaults )
}

