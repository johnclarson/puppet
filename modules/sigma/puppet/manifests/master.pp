class puppet::master inherits puppet::params {

    file { [ "${puppet_code_dir}/manifests",
             "${puppet_code_dir}/modules" ]:
        ensure     => directory,
        owner      => 'puppet',
        group      => 'root',
        mode       => '0755',
    }

    file { "${puppet_conf_dir}/auth.conf":
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        source     => 'puppet:///modules/puppet/etc/puppet/auth.conf',
    }

    file { "${puppet_conf_dir}/autosign.conf":
        ensure     => file,
        owner      => 'puppet',
        group      => 'puppet',
        mode       => '0664',
        content    => template( 'puppet/etc/puppet/autosign.conf.erb' ),
    }

    file { "${puppet_conf_dir}/foreman.yaml":
        ensure     => file,
        owner      => 'root',
        group      => 'puppet',
        mode       => '0640',
        content    => template( 'puppet/etc/puppet/foreman.yaml.erb' ),
    }

    file { [ '/etc/hiera.yaml',
             "${puppet_conf_dir}/hiera.yaml" ]:
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        source     => 'puppet:///modules/puppet/etc/puppet/hiera.yaml',
    }

    file { "${puppet_code_dir}/manifests/site.pp":
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        source     => 'puppet:///modules/puppet/etc/puppet/manifests/site.pp',
    }

    file { "${puppet_conf_dir}/node.rb":
        ensure     => file,
        owner      => 'puppet',
        group      => 'root',
        mode       => '0750',
        source     => 'puppet:///modules/puppet/etc/puppet/node.rb',
    }

    service{ 'puppetserver':
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        ensure     => running,
    }

}
