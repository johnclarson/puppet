class kvm::service inherits kvm::params {
    service{ 'libvirtd':
        enable       => true,
        hasrestart   => true,
        hasstatus    => true,
        ensure       => running,
    }
}
