define rundeck_server::acl_policies::remove_policy (
        $aclpolicy_dir,
    ){
    file { "${aclpolicy_dir}/${name}.aclpolicy":
        ensure     => absent,
    }
}
