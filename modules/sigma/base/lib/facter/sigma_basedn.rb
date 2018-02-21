require 'facter'
Facter.add(:sigma_basedn) do
    setcode do
        Facter::Util::Resolution.exec( "/bin/cat /facts/sigma_basedn.fact 2>/dev/null | /bin/grep -v \"^\s*$\" | /bin/grep -v \"^\s*#\" || /bin/echo dc=sigma,dc=dsci" )
    end
end
