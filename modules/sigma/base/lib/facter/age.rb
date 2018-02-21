require 'facter'
Facter.add(:age) do
    setcode do
        Facter::Util::Resolution.exec( "/bin/echo $(( $( date +%s) - $( stat -c%Y \"/root/anaconda-ks.cfg\" ) ))" )
    end
end
