class kvm::params {
    $kvm_packages                = hiera( 'kvm::packages', [] )
}
