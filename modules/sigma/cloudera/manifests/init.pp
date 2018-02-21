class cloudera {
    class { 'cloudera::install': }->
    class { 'cloudera::config': }->
    class { 'cloudera::service': }
}
