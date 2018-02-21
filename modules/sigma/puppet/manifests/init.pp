class puppet inherits puppet::params {
    class { 'puppet::install': }->
    class { 'puppet::config': }->
    class { 'puppet::service': }

    if ( $puppet_master ) {
       class { 'puppet::master': }
    }
}
