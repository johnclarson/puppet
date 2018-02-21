class maven::install inherits maven::params {
    exec { 'download_maven_binary':
        command     => "/bin/wget http://software.${sigma_tld}/maven/${maven_binary_file} -O ${maven_tmp_path}/${maven_binary_file}",
        unless      => "/bin/test -f ${maven_tmp_path}/${maven_binary_file}",
    }->
    exec { 'unpack_maven_binary':
        command     => "/bin/tar -xzf ${maven_tmp_path}/${maven_binary_file} --directory=${maven_install_path}",
        unless      => "/bin/test -d ${maven_install_path}/${maven_version}",
    }
}
