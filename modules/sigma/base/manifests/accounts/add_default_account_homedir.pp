class base::accounts::add_default_account_homedir inherits base::params {

    file { "${default_service_home}":
        ensure            => directory,
        owner             => 'root',
        group             => 'root',
        mode              => '0755',
    }

}
