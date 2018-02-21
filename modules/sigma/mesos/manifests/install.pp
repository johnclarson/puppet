class mesos::install inherits mesos::params {

    package { $mesos_packages:
       ensure => 'installed'
    }
}
