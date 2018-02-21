class repo_sync::install inherits repo_sync::params {

    package { $repo_sync_packages:
        ensure      => $repo_sync_version
    }
}
