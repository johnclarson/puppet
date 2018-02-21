class guacamole::config inherits guacamole::params {
    require tomcat_server
    file { '/usr/share/tomcat/.guacamole':
        ensure    =>  'directory',
        owner     =>  'root',
        group     =>  'tomcat',
        mode      =>  '0644',
    }
# uncomment to enable default capability (note: must comment out auth-ldap/auth-noauth entries)
#    file { '/usr/share/tomcat/.guacamole/user-mapping.xml':
#        owner     =>  'root',
#        group     =>  'tomcat',
#        mode      =>  '0644',
#        content   =>  template( 'guacamole/usr/share/tomcat/.guacamole/user-mapping.xml.erb' ),
#        notify    =>  Service[ 'guacd' ],
#    }
    file { '/usr/share/tomcat/.guacamole/guacamole.properties':
        owner     =>  'root',
        group     =>  'tomcat',
        mode      =>  '0644',
        content   =>  template( 'guacamole/usr/share/tomcat/.guacamole/guacamole.properties.erb' ),
        notify    =>  Service[ 'tomcat' ],
    }
# uncomment to enable noauth capability (note: must comment out auth-ldap entries)
#    file { '/usr/share/tomcat/.guacamole/noauth-config.xml':
#        owner     =>  'root',
#        group     =>  'tomcat',
#        mode      =>  '0644',
#        content   =>  template( 'guacamole/usr/share/tomcat/.guacamole/noauth-config.xml.erb' ),
#    }
    file { '/usr/share/tomcat/.guacamole/extensions':
        ensure    =>  'directory',
        owner     =>  'root',
        group     =>  'tomcat',
        mode      =>  '0755',
    }
# uncomment to enable noauth capability (note: must comment out auth-ldap entries)
#    file { '/usr/share/tomcat/.guacamole/extensions/guacamole-auth-noauth-0.9.9.jar':
#        owner     =>  'root',
#        group     =>  'tomcat',
#        mode      =>  '0755',
#        source    =>  'puppet:///modules/guacamole/guacamole-auth-noauth-0.9.9/guacamole-auth-noauth-0.9.9.jar',
#    }
    file { '/usr/share/tomcat/.guacamole/extensions/guacamole-auth-ldap-0.9.9.jar':
        owner     =>  'root',
        group     =>  'tomcat',
        mode      =>  '0755',
        source    =>  'puppet:///modules/guacamole/guacamole-auth-ldap-0.9.9/guacamole-auth-ldap-0.9.9.jar',
    }
    file { '/usr/local/guacd':
        owner     =>  'root',
        group     =>  'root',
        mode      =>  '0755',
        source    =>  'puppet:///modules/guacamole/usr/local/guacd',
        recurse   =>  true,
    }
    file { '/usr/share/tomcat/webapps/guacamole.war':
        ensure   =>  'link',
        owner    =>  'root',
        group    =>  'root',
        mode     =>  '0644',
        target   =>  '/usr/local/guacd/webapp/guacamole.war',
    }
    file { '/etc/init.d/guacd':
        owner     =>  'root',
        group     =>  'root',
        mode      =>  '0755',
        source    =>  'puppet:///modules/guacamole/guacd',
    }
    file { '/etc/ld.so.conf.d/guacd-0.9.9.conf':
        owner     =>  'root',
        group     =>  'root',
        mode      =>  '0644',
        source    =>  'puppet:///modules/guacamole/guacd-0.9.9.conf',
        notify    =>  Exec['ldconfig']
    }
     exec { 'ldconfig':
          path    => '/sbin',
          subscribe => File['/etc/ld.so.conf.d/guacd-0.9.9.conf'],
          refreshonly => true,
     }
}
