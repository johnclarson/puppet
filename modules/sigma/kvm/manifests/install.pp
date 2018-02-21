class kvm::install inherits kvm::params {
    package { $kvm_packages:
        ensure  => present,
    }
}
