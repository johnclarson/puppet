class profiles::provisioning_server {
    #class { 'web_server': }
    #class { 'tftp_server': }
    class { 'foreman_dependencies::before_foreman': }->
    #class { 'foreman': }->
    class { 'ham': }->
    class { 'foreman_dependencies::after_foreman': }
    class { 'ami_builder': }
}
