class nfs {
    class { 'nfs::install': }->
    class { 'nsf::service': }
}
