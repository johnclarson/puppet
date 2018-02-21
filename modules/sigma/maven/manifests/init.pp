class maven {
    class { 'maven::install': }->
    class { 'maven::config': }
}
