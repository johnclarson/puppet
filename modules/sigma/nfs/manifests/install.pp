class nfs::install inherits nfs::params {
    package { $nfs_packages:
        ensure   => installed,
    }
}
