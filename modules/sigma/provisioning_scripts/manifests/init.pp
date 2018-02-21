class provisioning_scripts {
    class { 'provisioning_scripts::install': }->
    class { 'provisioning_scripts::config': }
}
