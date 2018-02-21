class autofs {
    class { 'autofs::install': }->
    class { 'autofs::config': } ->
    class { 'autofs::service': } 
}
