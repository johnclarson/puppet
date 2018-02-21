define ami_builder::configs::install_config (
        $config_name,
        $source_ami,
        $instance_type,
        $security_group,
        $subnet,
        $region,
        $rootuser,
        $ami_name,
        $packages = [],
        $package_groups = [],
        $disks = [],
        $repos = [],
        $commands = [],
        $ami_description
    ) {
    
    
    file { "/etc/ami-builder/configs/${config_name}.yaml": 
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        content    => template( 'ami_builder/etc/ami-builder/configs/config.erb' )
    }
}
