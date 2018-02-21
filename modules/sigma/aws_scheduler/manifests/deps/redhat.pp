# == Class: aws_scheduler::deps::redhat
#
# This module manages aws_scheduler dependencies for redhat $::osfamily.
#
class aws_scheduler::deps::redhat {

  if ! defined(Package['python-devel']) {
    package { 'python-devel': ensure => installed }
  }

  if ! defined(Package['python-docopt']) {
    package { 'python-docopt': ensure => installed }
  }

  if ! defined(Package['python2-boto']) {
    package { 'python2-boto': ensure => installed }
  }
  
}
