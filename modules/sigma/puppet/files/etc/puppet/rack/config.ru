$0 = "master"
# ARGV << "--debug"
ARGV << "--rack"
ARGV << "--confdir" << "/etc/puppet"
ARGV << "--vardir"  << "/var/lib/puppet"
Encoding.default_external = Encoding::UTF_8 if defined? Encoding
require 'puppet/util/command_line'
run Puppet::Util::CommandLine.new.execute
