class xrdp::params {
    $xrdp_crypt_level                      = hiera( 'xrdp::crypt_level', 'low' )
    $xrdp_name                             = hiera( 'xrdp::name' )
    $xrdp_packages                         = hiera( 'xrdp::packages', [ 'xrdp', 'tigervnc-server', 'firefox', 'gnome-software' ] )
    $gnome_network_proxy_privilege_file    = hiera( 'xrdp::gnome_network_proxy_privilege_file', '/etc/xdg/autostart/gnome-software-service.desktop' )
}
