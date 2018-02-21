define rundeck_server::acl_policies::install_policy (
        $aclpolicy_dir,
        $aclpolicy_description                 = "Rundeck ACL Policy - ${name}",
        $aclpolicy_project_name                = "'^(${name}).*'",
        $aclpolicy_project_resources           = { 'job' => '[create,delete]', 'node' => '[read]', 'event' => '[read,create]' },
        $aclpolicy_project_adhoc               = '[read,run,runAs,kill,killAs]',
        $aclpolicy_project_job                 = '[create,read,update,delete,run,runAs,kill,killAs]',
        $aclpolicy_project_nodes               = "'^(UNDEF).*'",
        $aclpolicy_project_nodes_allow         = '[read,run]',
        $aclpolicy_project_groups              = "[${name}]",
        $aclpolicy_application_resources       = { 'job' => '[admin]', 'project' => '[create]', 'system' => '[read]' },
        $aclpolicy_application_project         = '[read]',
        $aclpolicy_application_project_acl     = '',
        $aclpolicy_application_storage         = '',
    ){
    file { "${aclpolicy_dir}/${name}.aclpolicy":
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        content    => template( "rundeck_server/etc/rundeck/aclpolicy.erb" ),
    }
}
