class repo_sync::params {
    $repo_sync_version                          = hiera( 'repo_sync::version', "latest" )
    $repo_sync_packages                         = hiera( 'repo_sync::packages', [ 'sync-repos', 'createrepo', 'awscli' ] )
}
