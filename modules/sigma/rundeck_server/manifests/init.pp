class rundeck_server {
    class { 'rundeck_server::install':
        notify   => Service[ 'rundeckd' ],
    }->
    class { 'rundeck_server::config':
        notify   => Service[ 'rundeckd' ],
    }->
    class { 'rundeck_server::acl_policies':
    }->
    class { 'rundeck_server::plugins':
        notify   => Service[ 'rundeckd' ],
    }->
    class { 'rundeck_server::service': }
}
