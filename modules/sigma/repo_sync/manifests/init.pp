class repo_sync {
    class { 'repo_sync::install': }->
    class { 'repo_sync::config': }
}
