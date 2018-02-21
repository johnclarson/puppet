class ruby {
    class { 'ruby::install': }->
    class { 'ruby::config': }
}
