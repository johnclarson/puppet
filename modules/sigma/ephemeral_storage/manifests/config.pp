class ephemeral_storage::config inherits ephemeral_storage::params {

    file { '/dev/shm/initialize_ephemeral_drives.sh':
        ensure       => file,
        owner        => 'root',
        group        => 'root',
        mode         => '0755',
        content      => template( 'ephemeral_storage/scripts/initialize_ephemeral_drives.sh.erb' ),
    }->

    exec { "initialize ephemeral drives [start: ${starting_drive_number}][num: ${diskcount}]":
        command      => '/dev/shm/initialize_ephemeral_drives.sh  && /bin/touch /dev/shm/initialize_ephemeral_drives.sh.success',
        creates      => '/dev/shm/initialize_ephemeral_drives.sh.success',
    }

}
