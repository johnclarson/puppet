class rsyslog::service inherits rsyslog::params {
    service{ 'rsyslog':
        enable      => true,
        hasrestart  => true,
        hasstatus   => true,
        ensure      => running,
    }
}
