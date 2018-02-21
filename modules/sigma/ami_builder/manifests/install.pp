class ami_builder::install inherits ami_builder::params {

    package { $ami_builder_packages:
        ensure      => $ami_builder_version
    }
}
