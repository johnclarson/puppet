class puppet::service inherits puppet::params {
    service{ 'puppet':
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        ensure     => running,
    }
}
