class repo_sync::config inherits repo_sync::params {

    file { [ '/data/', '/data/repo_sync/', '/data/repo_sync/process/', '/data/repo_sync/process/versions/',
           '/data/repo_sync/process/sync', '/data/repo_sync/process/current', '/data/repo_sync/process/import' ]:
        ensure  => 'directory'
    }
}
