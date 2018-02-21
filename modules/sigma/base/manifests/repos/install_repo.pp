define base::repos::install_repo (
        $yum_uri,
        $gpgcheck,
        $enabled,
        $yum_url,
    ) {
   
    file { "/etc/yum.repos.d/${name}.repo":
        ensure     => file,
        owner      => 'root',
        group      => 'root',
        mode       => '0644',
        content    => template( 'base/etc/yum.repos.d/repo.erb' ),
        notify     => Exec["yum_clean_all_$name"]
    }

    exec { "yum_clean_all_$name":
        command       => "/bin/yum clean all --disablerepo=\"*\" --enablerepo=\"$name\"",
        refreshonly   => "true"
    }
}
