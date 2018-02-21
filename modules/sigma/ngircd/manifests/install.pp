class ngircd::install inherits ngircd::params {

    package { $package_name:
        ensure => $package_version,
    }    
}
