class profiles::base {
    # Initialize processing stages
    stage{ 'first':
        before => Stage[ 'main' ],
    }
    stage{ 'last': }

    # Invoke first stage classes
    class{ '::base':
        stage  => first,
    }
    class{ '::java': }->
    class{ '::base::keystore': }
    class{ '::rsyslog': }
    class{ '::ntp': }
    class{ '::puppet': }
    class{ '::ivxsrvcp': }
    $limits = hiera('limits::fragment', {})
    create_resources('limits::fragment', $limits)
    #limits::conf {
    #    # turn off core dumps
    #    "all-core-soft": domain => '*', type => soft, item => core, value => 0;
    #    "all-core-hard": domain => '*', type => hard, item => core, value => 0;
    #}
}
