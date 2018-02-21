class base::accounts::add_accounts inherits base::params {

    ###########################################################################################
    ## Enabled Service Accounts
    ##
    $enabled_account_defaults = {
        password_max_age  => '99999',
        password_min_age  => '0',
        shell             => '/bin/bash',
    }
    create_resources( user, $enabled_service_accounts, $enabled_account_defaults )

}
