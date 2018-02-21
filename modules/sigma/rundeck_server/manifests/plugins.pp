class rundeck_server::plugins inherits rundeck_server::params {
    $rundeck_server_plugins.each |String $plugin| {
        file { "${rundeck_server_plugins_dir}/${plugin}":
            ensure     => file,
            owner      => 'root',
            group      => 'root',
            mode       => '0444',
            source     => "puppet:///binaries/rundeck_plugins/${plugin}",
            notify     => Service[ 'rundeckd' ],
        }
    }
}
