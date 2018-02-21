class ivxsrvcp {
    class { 'ivxsrvcp::install': }->
    class { 'ivxsrvcp::config': }
}
