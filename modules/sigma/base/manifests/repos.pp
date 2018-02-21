class base::repos inherits base::params {
    $base_repo_defaults = {
        enabled     => '1',
        gpgcheck    => '0',
        yum_url     => "${default_yum_url}",
    } 

    create_resources( base::repos::install_repo, $base_repos, $base_repo_defaults )

    file { '/etc/yum.repos.d':
        ensure      => directory,
        recurse     => true,
        purge       => true,
    }

}
