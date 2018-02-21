class jenkins_server::params {
    $jenkins_server_home                  = hiera( 'jenkins_server::home', '/usr/share/tomcat' )
    $jenkins_server_base                  = hiera( 'jenkins_server::base', "${jenkins_server_home}/.jenkins" )
    $jenkins_server_plugins               = hiera_array( 'jenkins_server::plugins', [] )
}
