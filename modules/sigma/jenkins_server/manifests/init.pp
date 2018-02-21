class jenkins_server {
    class { 'jenkins_server::config': }->
    class { 'jenkins_server::plugins': }
}
