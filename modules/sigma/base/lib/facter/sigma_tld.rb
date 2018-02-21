require 'facter'
Facter.add(:sigma_tld) do
    setcode do
        Facter::Util::Resolution.exec( "/bin/cat /facts/sigma_tld.fact 2>/dev/null | /bin/grep -v \"^\s*$\" | /bin/grep -v \"^\s*#\" || /bin/echo sigma.dsci" )
    end
end
