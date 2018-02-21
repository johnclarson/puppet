class mesos::service inherits mesos::params {

    if ( $mesos_master ) {

        service { 'mesos-master':
            ensure => 'running',
            enable => true
        } 

        service { 'mesos-slave':
            ensure => 'stopped',
            enable => false
        } 

        service { 'marathon':
            ensure => 'running',
            enable => true
        } 

    } else {
        
        service { 'mesos-slave':
            ensure => 'running',
            enable => true
        } 

        service { 'mesos-master':
            ensure => 'stopped',
            enable => false
        } 
    }       
}
