package { 'nginx':
    ensure => latest
}

package { 'memcached':
    ensure => latest
}

include apt

package { 'python-software-properties':
    ensure => latest
}

apt::ppa { 'ppa:yandex-load/main': }

package { 'yandex-load-tank-base':
    ensure => latest
}

