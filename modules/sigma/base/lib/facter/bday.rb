require 'facter'
Facter.add(:bday) do
    setcode do
        Facter::Util::Resolution.exec( "/usr/bin/stat /root/anaconda-ks.cfg | /bin/grep Modify: | /bin/sed -e 's/^Modify: //'" )
    end
end
