include apt

exec { 'apt-get update':
    path => '/usr/bin'
}

apt::ppa { 'ppa:yandex-load/main': }

package { 'nginx':
    ensure => latest,
    require  => Exec['apt-get update'],
}

package { 'memcached':
    ensure => latest,
    require  => Exec['apt-get update'],
}

package { 'python-software-properties':
    ensure => latest,
    require  => Exec['apt-get update'],
}

package { 'yandex-load-tank-base':
    ensure => latest,
#    require  => Exec['apt-get update'],
    require  => Apt::Ppa['ppa:yandex-load/main'],
}
