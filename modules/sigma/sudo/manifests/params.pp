class sudo::params {
    $sudo_sudogroups         = hiera( 'sudo::sudogroups', [] )
}
