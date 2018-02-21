class nodejs::install inherits nodejs::params {
    exec { 'download_nodejs_binary':
        command     => "/bin/wget http://software.${sigma_tld}/node/${nodejs_binary_file} -O ${nodejs_tmp_path}/${nodejs_binary_file}",
        unless      => "/bin/test -f ${nodejs_tmp_path}/${nodejs_binary_file} && /bin/xz -tv ${nodejs_tmp_path}/${nodejs_binary_file}",
    }->
    exec { 'unpack_nodejs_binary':
        command     => "/bin/tar -xf ${nodejs_tmp_path}/${nodejs_binary_file} --directory=${nodejs_install_path}",
        unless      => "/bin/test -d ${nodejs_install_path}/${nodejs_version}",
    }
}
