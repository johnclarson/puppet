class tomcat_server::install inherits tomcat_server::params { 
    require web_server
    tomcat::install { $name:
        install_from_source  => false,
        package_ensure       => installed,
        package_name         => $tomcat_server_packages,
    }

}
