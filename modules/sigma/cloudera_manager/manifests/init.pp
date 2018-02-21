class cloudera_manager {
    class { 'cloudera_manager::install': }->
    class { 'cloudera_manager::config': }
    #class { 'cloudera_manager::service': }
}
