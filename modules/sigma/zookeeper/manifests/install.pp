class zookeeper::install {

    package { 'zookeeper-server':
       ensure  => 'installed'
    }
}    
