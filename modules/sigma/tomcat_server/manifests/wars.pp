class tomcat_server::wars inherits tomcat_server::params { 
    $tomcat_server_war_defaults = {
        catalina_base    => '/usr/share/tomcat',
    }
    create_resources( tomcat::war, $tomcat_server_wars, $tomcat_server_war_defaults )
}
