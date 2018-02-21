class jts_server::params {
    $jts_binary                   = hiera( 'jts_server::binary' )
    $jts_packages                 = hiera( 'jts_server::packages', [ 'dos2unix' ] )
    $jts_poll_directory           = hiera( 'jts_server::poll_directory', '/tmp/jts' )
    $jts_run_frequency            = hiera( 'jts_server::run_frequency', '12h' )
    $jts_sftp_user                = hiera( 'jts_server::sftp_user' )
    $jts_sftp_password_hash       = hiera( 'jts_server::sftp_password_hash' )
    $jts_sftp_ip                  = hiera( 'jts_server::sftp_ip' )
    $jts_sftp_destination_path    = hiera( 'jts_server::sftp_destination_path' )
}
