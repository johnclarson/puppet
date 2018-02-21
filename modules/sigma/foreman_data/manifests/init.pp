class foreman_data inherits foreman_data::params {
    class{ '::foreman_data::config': }->
    class{ '::foreman_data::object': }
}
