class { 'java':
  distribution => 'jdk'
}

class { 'dynatrace::role::agents_package':
  installer_file_url => 'http://10.0.2.2/dynatrace/dynatrace-agent.jar',
  require            => Class['java']
}
