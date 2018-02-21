# Run Stages
stage { 'pre':
  before => Stage["main"],
}

# Node Declaration
node default {
  class { 'profiles::base':
    stage => 'pre'
  }
  hiera_include( 'classes' )
}
