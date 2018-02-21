class maven::params {
    $maven_version              = hiera( 'maven::version' )
    $maven_binary_suffix        = hiera( 'maven::binary_suffix', "-bin.tar.gz" )
    $maven_binary_file          = hiera( 'maven::binary_file', "${maven_version}${maven_binary_suffix}" )
    $maven_install_path         = hiera( 'maven::install_path', '/usr/local' )
    $maven_tmp_path             = hiera( 'maven::tmp_path', '/tmp' )
}
