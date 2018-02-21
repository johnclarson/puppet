class ami_builder::configs inherits ami_builder::params {

    create_resources( ami_builder::configs::install_config, $ami_builder_configs )

    file { "/etc/ami-builder/configs":
        ensure      => directory,
        recurse     => true,
        purge       => true,
    }

}
