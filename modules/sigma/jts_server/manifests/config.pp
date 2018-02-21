class jts_server::config inherits jts_server::params {

    file_line { 'jts_server: configure HOME_FOLDER':
        path       => "/opt/${jts_binary}/scripts/unix/params.bash",
        line       => "HOME_FOLDER=/opt/${jts_binary}",
        match      => '^HOME_FOLDER=',
        ensure     => present,
    }

    file_line { 'jts_server: configure JAVA_HOME':
        path       => "/opt/${jts_binary}/scripts/unix/params.bash",
        line       => 'JAVA_HOME=/usr/java/latest',
        match      => '^JAVA_HOME=',
        ensure     => present,
    }

    file { "/opt/${jts_binary}/jts.properties":
        ensure       => file,
        owner        => 'root',
        group        => 'root',
        mode         => '0644',
        source       => template( 'jts_server/opt/JTS/jts.properties.erb' ),
    }

}
