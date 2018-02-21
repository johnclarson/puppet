class ami_builder::params {
    $ami_builder_version                          = hiera( 'ami_builder::version', "latest" )
    $ami_builder_packages                         = hiera( 'ami_builder::packages', [ 'ami-builder' ] )
    $ami_builder_keys                             = hiera_array( 'ami_builder::keys', [] )
    $ami_builder_configs                          = hiera_hash( 'ami_builder::configs', {} )
}
