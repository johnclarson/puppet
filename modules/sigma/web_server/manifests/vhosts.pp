class web_server::vhosts inherits web_server::params {
    $web_server_vhost_defaults = {
    }
    create_resources( apache::vhost, $web_server_vhosts, $web_server_vhost_defaults )

}
