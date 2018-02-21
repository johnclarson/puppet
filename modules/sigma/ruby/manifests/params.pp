class ruby::params {
    $ruby_version              = hiera( 'ruby::version' )
    $ruby_binary_suffix        = hiera( 'ruby::binary_suffix', "-bin.tar.gz" )
    $ruby_binary_file          = hiera( 'ruby::binary_file', "${ruby_version}${ruby_binary_suffix}" )
    $ruby_install_path         = hiera( 'ruby::install_path', '/usr/local' )
    $ruby_tmp_path             = hiera( 'ruby::tmp_path', '/tmp' )
}
