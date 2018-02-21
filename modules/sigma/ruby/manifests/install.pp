class ruby::install inherits ruby::params {
    exec { 'download_ruby_binary':
        command     => "/bin/wget http://software.${sigma_tld}/ruby/${ruby_binary_file} -O ${ruby_tmp_path}/${ruby_binary_file}",
        unless      => "/bin/test -f ${ruby_tmp_path}/${ruby_binary_file}",
    }->
    exec { 'unpack_ruby_binary':
        command     => "/bin/tar -xzf ${ruby_tmp_path}/${ruby_binary_file} --directory=${ruby_install_path}",
        unless      => "/bin/test -d ${ruby_install_path}/${ruby_version}",
    }
}
