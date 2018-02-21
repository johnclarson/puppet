class profiles::use_case_remote_desktop_gateway {
    class { 'web_server': }
    class { 'cloudera': }
    class { 'docker': }
}
