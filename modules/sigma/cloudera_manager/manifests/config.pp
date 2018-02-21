class cloudera_manager::config inherits cloudera_manager::params {

    file { '/root/.ssh/id_rsa':
        ensure  => 'file',
        mode    => '0400',
        source  => "puppet:///binaries/ssh_keys/${environment}.cloudera.id_rsa"
    }

    file { '/root/.ssh/id_rsa.pub':
        ensure  => 'file',
        mode    => '0444',
        source  => "puppet:///binaries/ssh_keys/${environment}.cloudera.id_rsa.pub"
    }

    file { '/etc/cloudera-scm-server/db.properties':
        ensure  => 'file',
        content => template("cloudera_manager/etc/cloudera-scm-server/db.properties.erb")
    }

    file { '/etc/cloudera-scm-server/db.mgmt.properties':
        ensure  => 'file',
        content => template("cloudera_manager/etc/cloudera-scm-server/db.mgmt.properties.erb")
    }

}
