# == Class: aws_scheduler
#
# Install aws_scheduler
#
#
class aws_scheduler (
  $aws_access_key_id     = undef,
  $aws_secret_access_key = undef,
  $aws_region            = undef,
  $tag                   = 'schedule',
  $exclude               = '[]',
  $default               = '{"mon": {"start": 10, "stop": 23},"tue": {"start": 10, "stop": 23},"wed": {"start": 10, "stop": 23},"thu": {"start": 10, "stop": 23}, "fri": {"start": 10, "stop": 23}}',
  $time                  = 'gmt',   # can also be local
  $script_path           = '/usr/sbin',
  $cron_minute           = '5',
  $cron_hour             = '*',
  $log                   = '/var/log/aws-scheduler_cron.log',
  $proxy                 = undef,
  $proxy_port            = undef,
) {

  class { 'aws_scheduler::deps': }
  
  file { '/etc/aws-scheduler.cfg':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
    content => template('aws_scheduler/aws-scheduler.cfg.erb'),
    require => Class['aws_scheduler::deps'],
  }
  
  file { "${script_path}/aws-scheduler.py":
    ensure  => 'file',
    owner   => root,
    group   => root,
    mode    => '0600',
    content => template('aws_scheduler/aws-scheduler.py.erb'),
    require => File['/etc/aws-scheduler.cfg'],
  }
  
  file { '/etc/boto.cfg':
    ensure  => 'file',
    owner   => root,
    group   => root,
    mode    => '0600',
    content => template('aws_scheduler/boto.cfg.erb'),
    require => File["${script_path}/aws-scheduler.py"],
  }

  cron{ 'aws scheduler':
    command => "/usr/bin/python ${script_path}/aws-scheduler.py  check >> ${log}",
    minute  => $cron_minute,
    hour    => $cron_hour,
    require => File['/etc/boto.cfg'],
  }

}
