require 'facter'
Facter.add(:puppet_environment) do
    setcode do
        Facter::Util::Resolution.exec( "/bin/cat /facts/puppet_environment.fact 2>/dev/null | /bin/grep -v \"^\s*$\" | /bin/grep -v \"^\s*#\" || /bin/echo production" )
    end
end
