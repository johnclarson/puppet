class xrdp::config inherits xrdp::params {
    file { '/etc/xrdp/xrdp.ini':
        owner     =>  'root',
        group     =>  'root',
        mode      =>  '0644',
        content   =>  template( 'xrdp/etc/xrdp/xrdp.ini.erb' ),
        notify    =>  Service[ 'xrdp' ],
    }

    file { '/etc/skel/.vnc':
        ensure    =>  'directory',
        owner     =>  'root',
        group     =>  'root',
        mode      =>  '0644',
    }

    file { '/usr/share/xrdp':
        owner     =>  'root',
        group     =>  'root',
        mode      =>  '0644',
        source    =>  'puppet:///modules/xrdp/usr/share/xrdp',
        recurse   =>  true,
    }

    file_line { 'disable warning for centos package download network proxy privilege':
        path      => "$gnome_network_proxy_privilege_file",
        line      => 'X-GNOME-Autostart-enabled=false',
        match     => '^X-GNOME-Autostart-enabled=',
        ensure    => present,
    }
}
