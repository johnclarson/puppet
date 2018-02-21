class foreman_data::params {
    $foreman_data_object_dir                      = hiera( 'foreman_data::object_dir', '/tmp/foreman-data' )
    $foreman_data_objects                         = hiera_hash( 'foreman_data::objects', {} )
}
