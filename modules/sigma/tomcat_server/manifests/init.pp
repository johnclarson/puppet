class tomcat_server {
    class{ 'tomcat_server::install': }->
    class{ 'tomcat_server::bootstrap': }->
    class{ 'tomcat_server::servers': }->
    class{ 'tomcat_server::instances': }
    class{ 'tomcat_server::connectors': }
    class{ 'tomcat_server::service': }
    class{ 'tomcat_server::wars': }
}
