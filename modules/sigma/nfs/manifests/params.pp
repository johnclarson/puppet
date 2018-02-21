class nfs::params {
    $nfs_packages		= hiera( 'nfs::packages', [ 'nfs-utils' ] )
}
