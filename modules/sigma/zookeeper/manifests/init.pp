class zookeeper {

    if $facts['hostname'] =~ /(c|p|v)-zk-[a-z]+-\d+/ {
       class{'zookeeper::install': }
       class{'zookeeper::config': }
       class{'zookeeper::service': }
    }
    else {
       notify { 'message':
          message => "Looking for hostname pattern /(c|p|v)-zk-[a-z]+-\d+/. Can't apply class."
       }
    }
}

