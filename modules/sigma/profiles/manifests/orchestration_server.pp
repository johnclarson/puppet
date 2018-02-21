class profiles::orchestration_server {
    class { 'web_server': }->
    class { 'rundeck_server': }
    class { 'aws_scheduler':
        aws_region            => 'us-east-1',
        tag                   => 'schedule',
        exclude               => '[]',
        default               => '{"mon": {"start": 10, "stop": 23},"tue": {"start": 10, "stop": 23},"wed": {"start": 10, "stop": 23},"thu": {"start": 10, "stop": 23}, "fri": {"start": 10, "stop": 23}}',  
        time                  => 'gmt',
        script_path           => '/usr/sbin',
        cron_minute           => '10',
        cron_hour             => '*',
        log                   => '/var/log/aws-scheduler_cron.log'    
    }
}
