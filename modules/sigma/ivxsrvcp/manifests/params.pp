class ivxsrvcp::params {
    $ivxsrvcp_domain                             = hiera( 'ivxsrvcp::domain' )
    $ivxsrvcp_executable_file                    = hiera( 'ivxsrvcp::executable_file' )
}
