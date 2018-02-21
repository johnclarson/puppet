class ipa_tools::ipa_certs inherits ipa_tools::params {

    file { '/root/extract_ipa_host_certificates.sh':
        ensure               => file,
        owner                => 'root',
        group                => 'root',
        mode                 => '0750',
        content              => template( 'ipa_tools/root/extract_ipa_host_certificates.sh.erb' ),
        notify               => Exec[ 'extract_ipa_host_certificates' ],
    }

    exec { 'extract_ipa_host_certificates':
        command              => '/root/extract_ipa_host_certificates.sh',
        refreshonly          => true,
    }

}
