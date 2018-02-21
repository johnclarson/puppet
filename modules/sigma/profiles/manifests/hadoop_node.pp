class profiles::hadoop_node {

    stage{ 'second':
        before => Stage[ 'main' ],
    }

    class{ 'ephemeral_storage':
        stage  => second,
    }->

    class{ 'cloudera':
        stage  => second,
    }

    $cloudera_masters = hiera_array( 'cloudera::masters', [] )
    $cloudera_masters.each |String $cloudera_master| {
        if ( $cloudera_master == $fqdn ) {
            class { 'cloudera_manager':
                stage  => second,
            }
        }
    }


    class{ 'docker':
        stage  => second,
    }

    class{ 'java_crypto':
        stage  => second,
    }

    class{ 'ipa_tools::ipa_certs': }
}
