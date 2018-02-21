class puppet::params {
    $puppet_autosign_hosts          = hiera( 'puppet::autosign_hosts', [] )
    $puppet_config_sections         = hiera_hash( 'puppet::config_sections', { 'agent' => { 'server' => 'puppet' } } )
    $puppet_master                  = hiera( 'puppet::master', false )
    $puppet_packages                = hiera( 'puppet::packages' )

    $puppet_code_dir                = hiera( 'puppet::code_dir', '/etc/puppetlabs/code' )
    $puppet_conf_dir                = hiera( 'puppet::conf_dir', '/etc/puppetlabs/puppet' )

    $puppet_foreman_url             = hiera( 'foreman::foreman_url', "https://foreman.${::sigma_tld}" )
    $puppet_foreman_ssl_ca          = hiera( 'foreman::ssl_ca', "/etc/puppetlabs/puppet/ssl/ca/ca_crt.pem" )
    $puppet_foreman_ssl_cert        = hiera( 'foreman::ssl_cert', "/etc/puppetlabs/puppet/ssl/certs/${::fqdn}.pem" )
    $puppet_foreman_ssl_key         = hiera( 'foreman::ssl_key', "/etc/puppetlabs/puppet/ssl/private_keys/${::fqdn}.pem" )
    $puppet_foreman_user            = hiera( 'foreman::user', '' )
    $puppet_foreman_password        = hiera( 'foreman::password', '' )
    $puppet_foreman_puppetdir       = hiera( 'foreman::puppetdir', "/opt/puppetlabs/puppet/cache" )
    $puppet_foreman_puppetuser      = hiera( 'foreman::puppetuser', 'puppet' )
 }
