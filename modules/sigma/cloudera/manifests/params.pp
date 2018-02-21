class cloudera::params {
    $cloudera_version                          = hiera( 'cloudera::version', "present" )
    $cloudera_cname                            = hiera( 'cloudera::cname' )
    $cloudera_agent_enabled                    = hiera( 'cloudera::agent_enabled', "true" )
    $cloudera_manage_agent                     = hiera( 'cloudera::manage_agent', "true" )
    $cloudera_listening_hostname               = hiera( 'cloudera::listening_hostname', "NONE" )
    $cloudera_packages                         = hiera( 'cloudera::packages', [ 'cloudera-manager-agent' ] )
    $cloudera_ssh_authorized_keys              = hiera_hash( 'cloudera::ssh_authorized_keys', undef )
}
