class profiles::nexus_server {
    class { '::cloudera': }->
    class { '::java_crypto': }
}
