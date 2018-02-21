class guacamole::params {
    $guacamole_packages                  = hiera( 'guacamole::packages', [] )
    $ldap_hostname                       = hiera( 'guacamole::ldap-hostname' )
    $ldap_port                           = hiera( 'guacamole::ldap-port' )     
    $ldap_username_attribute             = hiera( 'guacamole::ldap-username-attribute', 'uid' ) 
    $ldap_user_base_dn                   = hiera( 'guacamole::ldap-user-base-dn' )
    $ldap_group_base                     = hiera( 'guacamole::ldap-group-base' )
    $ldap_config_base_dn                 = hiera( 'guacamole::ldap-config-base-dn' )
}
