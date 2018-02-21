class base::root_password inherits base::params {
    if ( !empty( $root_password ) ) {
        user { 'root':
            ensure   => present,
            password => "${root_password}",
        }
    }
}
