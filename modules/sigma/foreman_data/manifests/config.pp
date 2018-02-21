class foreman_data::config inherits foreman_data::params {

    file { "${foreman_data_object_dir}":
        ensure          => directory,
        owner           => 'root',
        group           => 'root',
        mode            => '0755',
        recurse         => true,
        purge           => true,
        force           => true,
    }

    $foreman_data_objects.each |String $object_type, Hash $object_instances| {
        $object_path = "${foreman_data_object_dir}/${object_type}"
        file { "${object_path}":
            ensure          => directory,
            recurse         => true,
            purge           => true,
        }
    }
}
