class tomcat_server::instances inherits tomcat_server::params { 
    $tomcat_server_instance_defaults = {
        catalina_base    => '/usr/share/tomcat',
        catalina_home    => '/usr/share/tomcat',
    }
    create_resources( tomcat::instance, $tomcat_server_instances, $tomcat_server_instance_defaults )
}
