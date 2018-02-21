class jts_server {
    class { 'jts_server::install': }->
    class { 'jts_server::config': }->
    class { 'jts_server::service': }
}
