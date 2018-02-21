class puppet::install inherits puppet::params {
    package { $puppet_packages:
        ensure    => installed,
    }
}
