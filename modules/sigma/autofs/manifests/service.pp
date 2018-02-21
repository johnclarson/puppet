class autofs::service {
    service { 'autofs':
       enable     => 'true',
       ensure     => 'running',
       require    => Package['autofs']
    }
}
