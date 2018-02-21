class base::install inherits base::params {
    package { $base_packages:
        ensure  => installed,
    }
}
