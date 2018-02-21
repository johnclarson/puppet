class mesos::config inherits mesos::params {

    file { '/etc/mesos/zk':
       ensure  => 'file',
       content => template("mesos/etc/mesos/zk.erb")
    }

    file { '/etc/mesos-slave/containerizers':
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        source     => 'puppet:///modules/mesos/etc/mesos-slave/containerizers'
    }

    file { '/etc/stitch/config.properties':
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        source     => 'puppet:///modules/mesos/etc/stitch/config.properties'
    }

    if ( ! $mesos_master ) {
    
        file { '/etc/mesos-slave/executor_registration_timeout':
            ensure  => 'file',
            content => template("mesos/etc/mesos-slave/executor_registration_timeout.erb")
        }

        file { '/etc/mesos-slave/advertise_ip':
            ensure  => 'file',
            content => template("mesos/etc/mesos-slave/advertise_ip.erb")
        }       

    } else {

        file { '/etc/mesos-master/ip':
            ensure  => 'file',
            content => template("mesos/etc/mesos-master/ip.erb")
        }       

        file { '/etc/mesos-master/cluster':
            ensure  => 'file',
            content => template("mesos/etc/mesos-master/cluster.erb")
        }       
    }
}
