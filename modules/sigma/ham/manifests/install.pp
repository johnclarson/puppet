class ham::install inherits ham::params {

    package { $ham_packages:
       ensure => 'installed'
    }
}
