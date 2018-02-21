class mesos::params {
    $cluster                   = hiera( 'mesos::cluster', 'unnamed' )
    $exec_reg_timeout          = hiera( 'mesos::exec_reg_timeout', '10mins' )
    $mesos_master              = hiera( 'mesos::master', false )
    $mesos_packages            = hiera( 'mesos::packages', [ 'mesos' ] )
    $zk_servers                = hiera_array( 'zookeeper::zk_servers', [] )
}
