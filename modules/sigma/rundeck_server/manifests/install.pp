class rundeck_server::install inherits rundeck_server::params {
     package { $rundeck_server_packages:
         ensure     => installed,
     }
}
