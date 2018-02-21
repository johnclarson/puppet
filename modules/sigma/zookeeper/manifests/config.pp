class zookeeper::config inherits zookeeper::params {

   file { '/etc/zookeeper/conf/zoo.cfg':
      ensure  => 'file',
      notify  => Service['zookeeper-server'],
      content => template("zookeeper/etc/zookeeper/conf/zoo.cfg.erb")
   }

   file { "${data_dir}/myid":
      ensure  => 'file',
      owner   => 'zookeeper',
      group   => 'zookeeper',
      mode   => '0644',
      content => template("zookeeper/var/lib/zookeeper/myid.erb")
   }

   file { "${data_dir}/version-2":
      ensure  => 'directory',
      owner   => 'zookeeper',
      group   => 'zookeeper',
      mode   => '0755'
   }
}    
