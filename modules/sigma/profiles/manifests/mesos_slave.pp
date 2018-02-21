class profiles::mesos_slave {
     class { 'docker': }->
     class { 'docker::run_instance': }
     class { 'mesos': }
}
