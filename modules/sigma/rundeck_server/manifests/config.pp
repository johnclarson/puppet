class rundeck_server::config inherits rundeck_server::params {
    file { "${rundeck_server_conf_dir}/rundeck-config.properties":
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        content    => template( 'rundeck_server/etc/rundeck/rundeck-config.properties.erb' ),
    }

    file { "${rundeck_server_conf_dir}/realm.properties":
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        content    => template( 'rundeck_server/etc/rundeck/realm.properties.erb' ),
    }

    file { "${rundeck_server_conf_dir}/profile":
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        content    => template( 'rundeck_server/etc/rundeck/profile.erb' ),
    }

    file { "${rundeck_server_conf_dir}/framework.properties":
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        content    => template( 'rundeck_server/etc/rundeck/framework.properties.erb' ),
    }

    file { "${rundeck_server_conf_dir}/project.properties":
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        content    => template( 'rundeck_server/etc/rundeck/project.properties.erb' ),
    }

    file { "${rundeck_server_conf_dir}/jaas-multiauth.conf":
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        content    => template( 'rundeck_server/etc/rundeck/jaas-multiauth.conf.erb' ),
    }
}
