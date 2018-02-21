class java_crypto {

    file { '/usr/java/latest/jre/lib/security/local_policy.jar':
        ensure => 'file',
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        source => 'puppet:///modules/java_crypto/usr/java/latest/jre/lib/security/local_policy.jar'
    }

    file { '/usr/java/latest/jre/lib/security/US_export_policy.jar':
        ensure => 'file',
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        source => 'puppet:///modules/java_crypto/usr/java/latest/jre/lib/security/US_export_policy.jar'
    }
}
