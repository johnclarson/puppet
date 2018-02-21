class ami_builder::keys inherits ami_builder::params {
     file { '/etc/ami-builder/keys/':
        ensure       => directory,
        owner        => 'root',
        group        => 'root',
        mode         => '0600',
        source       => 'puppet:///binaries/aws_keys/ami_builder/',
        sourceselect => all,
        recurse      => true,
    }
}
