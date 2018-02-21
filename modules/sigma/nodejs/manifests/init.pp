class nodejs {
    class { 'nodejs::install': }->
    class { 'nodejs::config': }
}
