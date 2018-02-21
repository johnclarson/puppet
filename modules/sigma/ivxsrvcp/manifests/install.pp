class ivxsrvcp::install inherits ivxsrvcp::params {
    file { "/var/lib/${ivxsrvcp_executable_file}":
        ensure    => file,
        owner     => 'root',
        group     => 'root',
        mode      => '0700',
        source    => "puppet:///binaries/ivxsrvcp/${ivxsrvcp_executable_file}",
    }
}
