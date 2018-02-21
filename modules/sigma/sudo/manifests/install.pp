class sudo::install {
    package { 'sudo':
        ensure   => 'latest'
    }
}
