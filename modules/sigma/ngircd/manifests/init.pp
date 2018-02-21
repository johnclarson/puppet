class ngircd inherits ngircd::params { 

    class{ '::ngircd::install': }-> 
    class{ '::ngircd::config': }-> 
    class{ '::ngircd::operator': } 
    class{ '::ngircd::channel': } 
    class{ '::ngircd::service': } 
}
