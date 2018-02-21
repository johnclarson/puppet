class base::accounts::del_groups inherits base::params {

    ##########################################################################################
    ## Disabled Service Groups
    ##
    $disabled_account_defaults = {
        ensure   => absent,
    }
    create_resources( group, $disabled_service_groups, $disabled_account_defaults )

}
