class zookeeper::params {

    $hostarray = split($facts['hostname'], '-')
    $project = $hostarray[2]
    $zkid = $hostarray[3]

    $max_client_conns                    = hiera( 'zookeeper::max_client_conns', '50' )
    $tick_time                           = hiera( 'zookeeper::tick_time', '2000' )
    $init_limit                          = hiera( 'zookeeper::init_limit', '10' )
    $sync_limit                          = hiera( 'zookeeper::sync_limit', '5' )
    $data_dir                            = hiera( 'zookeeper::data_dir', '/var/lib/zookeeper' )
    $client_port                         = hiera( 'zookeeper::client_port', '2181' )
    $data_log_dir                        = hiera( 'zookeeper::data_log_dir', '/var/lib/zookeeper' )
    $zk_servers                          = hiera_array( 'zookeeper::zk_servers', [] )
}
