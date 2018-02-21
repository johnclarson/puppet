class rsyslog::install inherits rsyslog::params {
    package { $rsyslog_packages:
        ensure    => installed,
    }
}
