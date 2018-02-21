class tomcat_server::connectors inherits tomcat_server::params { 
    $tomcat_server_connector_defaults = {
        catalina_base      => '/usr/share/tomcat',
        port               => '8080',
        protocol           => 'HTTP/1.1',

    }
    create_resources( tomcat::config::server::connector, $tomcat_server_connectors, $tomcat_server_connector_defaults )
}
