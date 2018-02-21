class base::params {
    $default_service_home                = hiera( 'base::default_service_home' )
    $motd                                = hiera( 'base::motd', '' )
    $disabled_service_accounts           = hiera_hash( 'base::disabled_service_accounts', {} )
    $disabled_service_groups             = hiera_hash( 'base::disabled_service_groups', {} )
    $enabled_service_accounts            = hiera_hash( 'base::enabled_service_accounts', {} )
    $enabled_service_groups              = hiera_hash( 'base::enabled_service_groups', {} )
    $root_password                       = hiera( 'base::root_password', '' )
    $base_packages                       = hiera_array( 'base::packages', [] )
    $base_policykits                     = hiera_hash( 'base::policykits', {} )
    $bash_runlevel                       = hiera( 'base::runlevel', 3 )
    $base_repos                          = hiera_hash( 'base::repos', {} )
    $base_resolv_domain                  = hiera( 'base::resolv::domain' )
    $base_resolv_nameservers             = hiera( 'base::resolv::nameservers' )
    $base_resolv_search_subdomains       = hiera( 'base::resolv::search_subdomains' )
    $base_sshd_allowed_groups            = hiera( 'base::sshd_allowed_groups', [] )
    $base_sshd_config_lines              = hiera( 'base::sshd_config_lines' )
    $base_sshd_sftp_groups               = hiera( 'base::sshd_sftp_groups', [] )
    $base_timezone                       = hiera( 'base::timezone', 'UTC' )
    $base_java_keystores                 = hiera_hash( 'base::java_keystores', {} )
    if ( "$yum_host" != "" ) {
        $default_yum_url                     = hiera( 'base::default_yum_url', "http://${yum_host}/" )
    } else {
        $default_yum_url                     = hiera( 'base::default_yum_url', "http://yum.${sigma_tld}/" )
    }
}
