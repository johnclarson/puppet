class ngircd::config inherits ngircd::params {
 
    $ipv4_str = bool2str($ipv4, 'yes', 'no')
    $ipv6_str = bool2str($ipv6, 'yes', 'no')

    file { $conf_d:
            ensure  => directory,
            owner   => 0,
            group   => $group,
            mode    => '0755',
            recurse => true,
            purge   => true,
    }
 
    file { $ngircd::params::config_file:
            owner   => 0,
            group   => $group,
            mode    => '0660',
            require => Package[$package_name],
            content => template("${module_name}/etc/global.erb"),
    }
}
