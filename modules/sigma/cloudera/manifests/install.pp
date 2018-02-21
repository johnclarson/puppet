class cloudera::install inherits cloudera::params {

    package { $cloudera_packages:
        ensure      => $cloudera_version
    }
 
    exec { 'fix_alternatives':
        command => "/bin/sed -i -e 's/path, _, _, priority_str = line.rstrip().split(\" \")/thisLine = line.rstrip().split(\" \")\\n\\tpath = thisLine[0]\\n\\tpriority_str = thisLine[-1]/g' /usr/lib64/cmf/agent/build/env/lib/python2.7/site-packages/cmf-*/cmf/client_configs.py",
        unless  => "/bin/grep thisLine /usr/lib64/cmf/agent/build/env/lib/python2.7/site-packages/cmf-*/cmf/client_configs.py",
    }
}
