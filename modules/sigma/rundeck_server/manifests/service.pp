class rundeck_server::service inherits rundeck_server::params {
    service{ 'rundeckd':
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        ensure     => running,
    }
}
