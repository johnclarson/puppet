class nfs::service inherits nfs::params {
    service{ 'rpcbind':
        enable      => true,
        hasrestart  => true,
        hasstatus   => true,
        ensure      => running,
    }
}
