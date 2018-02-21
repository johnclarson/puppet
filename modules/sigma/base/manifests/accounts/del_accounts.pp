class base::accounts::del_accounts inherits base::params {

    ##########################################################################################
    ## Disabled Service Accounts
    ##
    $disabled_account_defaults = {
        ensure   => absent,
    }
    create_resources( user, $disabled_service_accounts, $disabled_account_defaults )

}
