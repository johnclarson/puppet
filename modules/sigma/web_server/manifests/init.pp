class web_server inherits web_server::params {
    class { 'web_server::bootstrap': }->
    class { 'web_server::listeners': }->
    class { 'web_server::modules': }->
    class { 'web_server::vhosts': }
}
