class tomcat_server::service inherits tomcat_server::params {
    tomcat::service { $name:
        use_init             => $tomcat_server_use_init,
        service_name         => $tomcat_server_service_name
    }

}
