class foreman_data::object inherits foreman_data::params {

    $foreman_data_objects.each |String $object_type, Hash $object_instances| {
        $object_path = "${foreman_data_object_dir}/${object_type}"
        $object_instances.each |String $object_name, Hash $object_data| {
            $data = $object_data[ 'data' ]
            file { "${object_path}/${object_name}.json":
                ensure    => file,
                owner     => 'root',
                group     => 'root',
                mode      => '0644',
                content   => template( "foreman_data/object.erb" ),
            }
        }
    }
}
