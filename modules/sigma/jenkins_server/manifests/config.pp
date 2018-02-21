class jenkins_server::config inherits jenkins_server::params {
    file { [ "${jenkins_server_base}",
             "${jenkins_server_base}/plugins" ]:
        ensure          => directory,
        owner           => 'tomcat',
        group           => 'tomcat',
    }
}
