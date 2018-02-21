class kvm {
    class { 'kvm::install': }->
    class { 'kvm::config': }->
    class { 'kvm::service': }
}
