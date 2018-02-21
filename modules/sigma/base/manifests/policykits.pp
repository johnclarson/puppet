class base::policykits inherits base::params {
    define base::policykits::create_policy (
            $action,
            $identity,
            $result_active,
            $result_any,
            $result_inactive,
        ) {
        file { "/etc/polkit-1/localauthority/50-local.d/${name}.pk1a":
            ensure      => file,
            owner       => 'root',
            group       => 'root',
            mode        => '0644',
            content     => template( 'base/etc/polkit-1/localauthority/50-local.d/policy.pk1a.erb' ),
         }
     }

     create_resources( base::policykits::create_policy, $base_policykits )
}
