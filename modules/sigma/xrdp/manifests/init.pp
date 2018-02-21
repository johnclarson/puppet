class xrdp {
    class { "xrdp::install": }->
    class { "xrdp::config": }->
    class { "xrdp::service": }
}
