class web_server::params {
    $web_server_config_source           = hiera( 'web_server::config_source', '' )
    $web_server_vhosts_custom           = hiera_hash( "${web_server_config_source}::web_server::vhosts", {} )
    if ( $web_server_vhosts_custom == {} ) {
        $web_server_vhosts              = hiera_hash( 'web_server::vhosts', {} )
    } else {
        $web_server_vhosts              = $web_server_vhosts_custom
    }
    $web_server_listeners_custom        = hiera_hash( "${web_server_config_source}::web_server::listeners", {} )
    if ( $web_server_listeners_custom == {} ) {
        $web_server_listeners           = hiera_hash( 'web_server::listeners', {} )
    } else {
        $web_server_listeners           = $web_server_listeners_custom
    }
    $web_server_modules_builtin         = hiera_hash( 'web_server::modules_builtin', {} )
    $web_server_modules_custom          = hiera_hash( 'web_server::modules_custom', {} )
}
