class profiles::cloudera_manager {
    class { 'cloudera_manager': }
    class { 'docker': }
}
