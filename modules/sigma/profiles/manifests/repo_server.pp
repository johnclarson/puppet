class profiles::repo_server {
    class { 'web_server': }->
    class { 'gitlab': }
    class { 'repo_sync': }
}
