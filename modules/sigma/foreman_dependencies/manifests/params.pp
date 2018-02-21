class foreman_dependencies::params {
    $ssl_verify_peer                            = hiera( 'foreman_dependencies::ssl_verify_peer', 'true' )
    $aws_region                                 = hiera( 'foreman_dependencies::aws_region', 'us-east-1' )
    $aws_domain                                 = hiera( 'foreman_dependencies::aws_domain', 'amazonaws.com' )
}
