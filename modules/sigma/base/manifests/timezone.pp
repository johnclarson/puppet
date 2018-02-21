class base::timezone inherits base::params {
    file { '/etc/localtime':
        ensure  => link,
        target  => "/usr/share/zoneinfo/${base_timezone}",
    }
}
