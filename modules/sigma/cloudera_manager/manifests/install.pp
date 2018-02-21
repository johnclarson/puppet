class cloudera_manager::install inherits cloudera_manager::params {
    package { $cloudera_master_packages:
        ensure      => $cloudera_version
    }
}
