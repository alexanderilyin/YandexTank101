exec { 'apt-get update':
    path => '/usr/bin'
}

package { 'nginx':
    ensure => latest,
    require  => Exec['apt-get update'],
}

service { "nginx":
    ensure  => "running",
    enable  => "true",
    require => Package["nginx"],
}

