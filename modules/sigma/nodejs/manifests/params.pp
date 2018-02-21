class nodejs::params {
    $nodejs_version              = hiera( 'nodejs::version' )
    $nodejs_binary_suffix        = hiera( 'nodejs::binary_suffix', ".tar.xz" )
    $nodejs_binary_file          = hiera( 'nodejs::binary_file', "${nodejs_version}${nodejs_binary_suffix}" )
    $nodejs_install_path         = hiera( 'nodejs::install_path', '/usr/local' )
    $nodejs_tmp_path             = hiera( 'nodejs::tmp_path', '/tmp' )
}
