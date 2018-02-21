class web_server::listeners inherits web_server::params {
    create_resources( apache::listen, $web_server_listeners )

}
