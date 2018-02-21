class guacamole {
    class { "guacamole::install": }->
    class { "guacamole::config": }->
    class { "guacamole::service": }
}
