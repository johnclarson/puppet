class tomcat_server::servers inherits tomcat_server::params { 
    $tomcat_server_server_defaults = {
        catalina_base      => '/usr/share/tomcat',
        port               => '8880',
    }
    create_resources( tomcat::config::server, $tomcat_server_servers, $tomcat_server_server_defaults )
}
