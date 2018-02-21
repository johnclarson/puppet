class guacamole::install inherits guacamole::params {
    package { $guacamole_packages:
        ensure => latest,
    }
}
