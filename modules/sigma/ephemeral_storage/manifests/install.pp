class ephemeral_storage::install inherits ephemeral_storage::params {
     package{ $ephemeral_storage_packages:
         ensure            => installed,
     }
}
