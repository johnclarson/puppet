class tomcat_server::params {
    $tomcat_server_connectors            = hiera_hash( 'tomcat_server::connectors', {} )
    $tomcat_server_instances             = hiera_hash( 'tomcat_server::instances', {} )
    $tomcat_server_packages              = hiera( 'tomcat_server::packages', [] )
    $tomcat_server_servers               = hiera_hash( 'tomcat_server::servers', {} )
    $tomcat_server_use_init              = hiera( 'tomcat::service::use_init', [] )
    $tomcat_server_service_name          = hiera( 'tomcat::service::service_name', [] )
    $tomcat_server_wars                  = hiera_hash( 'tomcat_server::wars', {} )
}
