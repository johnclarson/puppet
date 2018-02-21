class base::accounts {
    class{ 'base::accounts::del_accounts': }->
    class{ 'base::accounts::del_groups': }->
    class{ 'base::accounts::add_groups': }->
    class{ 'base::accounts::add_default_account_homedir': }->
    class{ 'base::accounts::add_accounts': }
}
