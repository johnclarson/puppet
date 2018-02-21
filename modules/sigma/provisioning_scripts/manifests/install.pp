class provisioning_scripts::install inherits provisioning_scripts::params {
    file { '/usr/share/foreman/config/hook/scripts':
        ensure     => directory,
        owner      => 'root',
        group      => 'root',
        mode       => '0755',
        require    => Package[ 'tfm-rubygem-foreman_hooks' ],
    }
}
