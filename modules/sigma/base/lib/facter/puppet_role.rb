require 'facter'
Facter.add(:puppet_role) do
    setcode do
        Facter::Util::Resolution.exec( "/bin/cat /facts/puppet_role.fact 2>/dev/null | /bin/grep -v \"^\s*$\" | /bin/grep -v \"^\s*#\" || /bin/echo \"\"" )
    end
end
