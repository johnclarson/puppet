class mesos {

    class{'mesos::install': }->
    class{'mesos::config': }->
    class{'mesos::service': }

}
