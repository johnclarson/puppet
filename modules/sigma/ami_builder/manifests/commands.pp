class ami_builder::commands inherits ami_builder::params {
     file { '/etc/ami-builder/commands/':
        ensure       => directory,
        owner        => 'root',
        group        => 'root',
        mode         => '0755',
        source       => 'puppet:///modules/ami_builder/etc/ami-builder/commands/',
        sourceselect => all,
        recurse      => true,
    }
}
