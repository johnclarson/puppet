class xrdp::service inherits xrdp::params {
    service { 'xrdp':
        enable      => true,
        hasrestart  => true,
        hasstatus   => true,
        ensure      => running,
    }
}
