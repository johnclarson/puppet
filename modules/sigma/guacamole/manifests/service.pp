class guacamole::service inherits guacamole::params {
    service { 'guacd':
        enable      => true,
        hasrestart  => true,
        hasstatus   => true,
        ensure      => running,
    }
}
