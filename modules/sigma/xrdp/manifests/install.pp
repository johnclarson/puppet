class xrdp::install inherits xrdp::params {
    package { $xrdp_packages:
        ensure => latest,
    }
}
