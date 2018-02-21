class profiles::mesos_master {
     class { 'docker': }->
     class { 'docker::run_instance': }
     class { 'mesos': }
}
