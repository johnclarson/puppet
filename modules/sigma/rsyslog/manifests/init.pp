class rsyslog {
    class { 'rsyslog::install': }->
    class { 'rsyslog::config': }->
    class { 'rsyslog::service': }
}
