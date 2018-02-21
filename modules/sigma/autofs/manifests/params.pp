class autofs::params {
    $autofs_mount_points         = hiera('autofs::mount_points', [] )
}
