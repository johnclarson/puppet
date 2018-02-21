class tomcat_server::bootstrap inherits tomcat_server::params { 
    class { 'tomcat': }
}
