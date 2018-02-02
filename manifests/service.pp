class apache::service (
	String $servicename = lookup({"name" => "apache.servicename", "default_value" => $::apache::parameters::servicename})
	) inherits ::apache::parameters {
	service { 'apache-service':
		ensure     => running,
		name       => $servicename,
		enable     => true,
		hasrestart => true,
	}
}
