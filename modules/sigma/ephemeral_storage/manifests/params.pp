class ephemeral_storage::params {

    $ephemeral_storage_packages               = hiera( 'ephemeral_storage::packages', [] )
    $starting_drive_number                    = hiera( 'ephemeral_storage::starting_drive_number', 0 )

    case $::ec2_metadata[instance-type] {
        'g2.2xlarge':                       { $diskcount=1 }
        'i2.xlarge':                        { $diskcount=1 }
        'm3.medium':                        { $diskcount=1 }
        'm3.large':                         { $diskcount=1 }
        'r3.large':                         { $diskcount=1 }
        'r3.xlarge':                        { $diskcount=1 }
        'r3.2xlarge':                       { $diskcount=1 }
        'r3.4xlarge':                       { $diskcount=1 }
        'x1.16xlarge':                      { $diskcount=1 }
        'm3.xlarge':                        { $diskcount=2 }
        'm3.2xlarge':                       { $diskcount=2 }
        'c3.large':                         { $diskcount=2 }
        'c3.xlarge':                        { $diskcount=2 }
        'c3.2xlarge':                       { $diskcount=2 }
        'c3.8xlarge':                       { $diskcount=2 }
        'g2.8xlarge':                       { $diskcount=2 }
        'x1.32xlarge':                      { $diskcount=2 }
        'r3.8xlarge':                       { $diskcount=2 }
        'i2.2xlarge':                       { $diskcount=2 }
        'd2.xlarge':                        { $diskcount=3 }
        'i2.4xlarge':                       { $diskcount=4 }
        'd2.2xlarge':                       { $diskcount=6 }
        'i2.8xlarge':                       { $diskcount=8 }
        default:                            { $diskcount=0 }
    }

}
