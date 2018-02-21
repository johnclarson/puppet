class ham::config inherits ham::params {

    file { '/etc/sysconfig/hambone/config.json':
       ensure  => 'file',
       owner      => 'root',
       group      => 'root',
       mode       => '0600',
       content => template("ham/etc/sysconfig/hambone/config.json.erb")
    }

}
