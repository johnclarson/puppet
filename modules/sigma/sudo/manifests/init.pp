class sudo inherits sudo::params {
    class { 'sudo::install': }->
    class { 'sudo::config': }
}
