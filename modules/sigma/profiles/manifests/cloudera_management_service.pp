class profiles::cloudera_management_service {
    class { 'cloudera': }
    class { 'docker': }
}
