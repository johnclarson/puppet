class foreman_dependencies::after_foreman inherits foreman_dependencies::params {

    file_line { 'use_iam_profile':
        path  => '/usr/share/foreman/app/models/compute_resources/foreman/model/ec2.rb',
        line  => '      @client ||= ::Fog::Compute.new(:provider => "AWS", :use_iam_profile => true, :region => region)',
        match => '^\s{6}\@client\s+'
    }

    if ( $aws_domain != 'amazonaws.com' ) {
        exec { 'fix_compute.rb':
            command => "/bin/sed -i -e 's/amazonaws.com/${aws_domain}/g' /opt/theforeman/tfm/root/usr/share/gems/gems/fog-aws*/lib/fog/aws/compute.rb",
            onlyif  => "/bin/grep amazonaws.com /opt/theforeman/tfm/root/usr/share/gems/gems/fog-aws*/lib/fog/aws/compute.rb",
        }

        exec { 'fix_iam.rb':
            command => "/bin/sed -i -e 's/amazonaws.com/${aws_region}.${aws_domain}/g' /opt/theforeman/tfm/root/usr/share/gems/gems/fog-aws*/lib/fog/aws/iam.rb",
            onlyif  => "/bin/grep amazonaws.com /opt/theforeman/tfm/root/usr/share/gems/gems/fog-aws*/lib/fog/aws/iam.rb",
        }
    }

    if ( $aws_region != 'us-east-1' ) { 
        exec { 'fix_aws.rb':
            command => "/bin/sed -i -e 's/^.*@regions.*/      @regions ||= [\x27${aws_region}\x27]/g' /opt/theforeman/tfm/root/usr/share/gems/gems/fog-aws*/lib/fog/aws.rb",
            onlyif  => "/bin/grep us-east-1 /opt/theforeman/tfm/root/usr/share/gems/gems/fog-aws*/lib/fog/aws.rb",
        }

    }

    if ( $ssl_verify_peer != 'true' ) {
        exec { 'fix_ssl_verify':
            command => "/bin/sed -i -e 's/ssl_context = OpenSSL::SSL::SSLContext.new/ssl_context = OpenSSL::SSL::SSLContext.new\\n      params[:ssl_verify_peer] = false/g'  /opt/theforeman/tfm/root/usr/share/gems/gems/excon-*/lib/excon/ssl_socket.rb",
            unless  => "/bin/grep \"\\[\\:ssl_verify_peer\\] = false\" /opt/theforeman/tfm/root/usr/share/gems/gems/excon-*/lib/excon/ssl_socket.rb"
        }
    }

}
