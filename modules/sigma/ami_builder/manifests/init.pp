class ami_builder {
    class { 'ami_builder::install': }->
    class { 'ami_builder::configs': }->
    class { 'ami_builder::keys': }
    class { 'ami_builder::commands': }
}
