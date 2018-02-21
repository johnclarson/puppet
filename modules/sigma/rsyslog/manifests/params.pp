class rsyslog::params {
    $rsyslog_packages                  = hiera( 'rsyslog::packages', [ 'rsyslog' ] )
    $rsyslog_server                    = hiera( 'rsyslog::server', false )
    $rsyslog_server_tcp_ports          = hiera( 'rsyslog::server::tcp_ports', [ 514, 515 ] )
    $rsyslog_server_allowed_networks   = hiera( 'rsyslog::server::allowed_networks', [] )
    $rsyslog_storage_path              = hiera( 'rsyslog::storage_path' )
    $rsyslog_logger_keytab             = hiera( 'rsyslog::logger_keytab' )
    $rsyslog_logger_principal          = hiera( 'rsyslog::logger_principal' )

    $rsyslog_config_prefix             = hiera( 'rsyslog::config_prefix', '' )
    if ( $rsyslog_config_prefix == '' ) {
        $rsyslog_audit_forwarders      = hiera( 'rsyslog::audit_forwarders', [] )
        $rsyslog_syslog_forwarders     = hiera( 'rsyslog::syslog_forwarders', [] )
    } else {
        $rsyslog_audit_forwarders      = hiera( "${rsyslog_config_prefix}::rsyslog::audit_forwarders", [] )
        $rsyslog_syslog_forwarders     = hiera( "${rsyslog_config_prefix}::rsyslog::syslog_forwarders", [] )
    }
}
