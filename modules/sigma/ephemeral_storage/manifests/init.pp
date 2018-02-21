class ephemeral_storage inherits ephemeral_storage::params {
    class { 'ephemeral_storage::install': }->
    class { 'ephemeral_storage::config': }
}
