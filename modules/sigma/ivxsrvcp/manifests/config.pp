class ivxsrvcp::config inherits ivxsrvcp::params {

    exec { 'ivxsrvcp: unpack executable file':
        command     => "/var/lib/${ivxsrvcp_executable_file} --domain-name ${ivxsrvcp_domain}",
        creates     => "/var/lib/ivxsrvcp/uninstall.sh",
    }
}
