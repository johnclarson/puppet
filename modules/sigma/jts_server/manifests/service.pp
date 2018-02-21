class jts_server::service inherits jts_server::params {

    exec { 'jts_server: start the jts process':
        command            => "/bin/bash /opt/${jts_binary}/scripts/unix/process-start.bash jts",
        unless             => "/bin/ps -eaf | grep ${jts_binary} | grep -v grep",
    }

}
