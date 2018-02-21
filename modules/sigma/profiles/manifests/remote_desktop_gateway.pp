class profiles::remote_desktop_gateway {
    class { 'web_server': }->
    class { 'tomcat_server': }->
    class { 'guacamole': }
}
