class ngircd::service inherits ngircd::params {

    service { $ngircd::params::service_name:
        ensure    => running,
        enable    => true,
        require   => File[$ngircd::params::config_file],
        subscribe => [File[$ngircd::params::config_file], File[$ngircd::params::conf_d]]
    }
}
