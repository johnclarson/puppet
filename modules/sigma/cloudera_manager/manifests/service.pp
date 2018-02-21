class cloudera_manager::service inherits cloudera_manager::params {

    if $cloudera_manage_server == 'true' {
        service { 'cloudera-scm-server':
            ensure      => 'running',
            enable      => $cloudera_enable_server,
            hasrestart  => 'true',
            hasstatus   => 'true',
        }
    }

}
