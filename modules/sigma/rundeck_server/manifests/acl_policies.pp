class rundeck_server::acl_policies inherits rundeck_server::params {

    $acl_policy_defaults = {
        aclpolicy_dir      => "${rundeck_server_conf_dir}",
    }
    create_resources( rundeck_server::acl_policies::install_policy, $rundeck_server_acl_policies, $acl_policy_defaults )

    $acl_policy_remove_defaults = {
        aclpolicy_dir      => "${rundeck_server_conf_dir}",
    }
    create_resources( rundeck_server::acl_policies::remove_policy, $rundeck_server_acl_policies_disabled, $acl_policy_remove_defaults )

}
