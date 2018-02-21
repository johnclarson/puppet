require 'facter'
Facter.add(:yum_host) do
    setcode do
        Facter::Util::Resolution.exec( "/bin/cat /facts/yum_host.fact 2>/dev/null | /bin/grep -v \"^\s*$\" | /bin/grep -v \"^\s*#\" || /bin/echo \"\"" )
    end
end
