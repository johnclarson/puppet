class jenkins_server::plugins inherits jenkins_server::params {
    $jenkins_server_plugins.each |String $plugin| {
        file { "${jenkins_server_home}/.jenkins/plugins/${plugin}":
            ensure     => file,
            owner      => 'root',
            group      => 'root',
            mode       => '0444',
            source     => "puppet:///binaries/jenkins/plugins/${plugin}",
            notify     => Service[ 'tomcat' ],
        }
    }
}
