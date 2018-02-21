class base {
    class{ '::base::root_password': }
    class{ '::base::resolv': }
    class{ '::base::accounts': }->
    class{ '::base::sshd': }->
    class{ '::base::repos': }->
    class{ '::base::install': }->
    class{ '::base::policykits': }
    class{ '::base::security': }
    class{ '::base::sssd': }
    class{ '::base::timezone': }
    class{ '::base::krb': }
}
