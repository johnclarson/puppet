class profiles::build_server {
    class { 'web_server': }->
    class { 'tomcat_server': }->
    class { 'jenkins_server': }
    class { 'maven': }
    class { 'nodejs': }
    class { 'ruby': }
}
