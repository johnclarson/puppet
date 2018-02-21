class cloudera::service inherits cloudera::params {

    if $cloudera_manage_agent == 'true' {

        service { 'cloudera-scm-agent':
            ensure      => 'running',
            enable      => $cloudera_agent_enable,
            hasrestart  => 'true',
            hasstatus   => 'true'
        }
    }
}
