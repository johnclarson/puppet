class web_server::modules inherits web_server::params {
    create_resources( web_server::modules::load_module, $web_server_modules_builtin )
    create_resources( apache::mod, $web_server_modules_custom )
}
