class jts_server::install inherits jts_server::params {

    package { $jts_packages:
        ensure      => installed,
    }

    file { "/opt/${jts_binary}.zip":
        ensure       => file,
        owner        => 'root',
        group        => 'root',
        mode         => '0644',
        source       => "puppet:///binaries/JTS/${jts_binary}.zip",
    }->

    exec { 'jts_server: unpack jts binary':
        command      => "/bin/rm -Rf /opt/${jts_binary} && /usr/bin/unzip /opt/${jts_binary}.zip -d /opt",
        creates      => "/opt/${jts_binary}"
    }->

    exec { 'jts_server: set jts permissions':
        command      => "/bin/find /opt/${jts_binary} -type d -exec /bin/chmod 750 {} \; && /bin/find /opt/${jts_binary} -type f -exec /bin/chmod 640 {} \;",
        refresh_only => true,
    }->

    exec { 'jts_server: ensure unix line endings':
        command      => "/bin/find /opt/${jts_binary} -name *.bash -exec /usr/bin/dos2unix {} \;",
        refresh_only => true,
        require      => Package[ 'dos2unix' ],
    }

}
