include apt

exec { 'apt-get update':
    path => '/usr/bin'
}

apt::ppa { 'ppa:yandex-load/main': 
    before => Exec['apt-get update'],
}

package { 'yandex-load-tank-base':
    ensure => latest,
    require  => Apt::Ppa['ppa:yandex-load/main'],
}

exec { 'insecure_private_key':
  command => "/usr/bin/wget -q https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant -O /home/vagrant/.ssh/id_rsa",
  creates => "/home/vagrant/.ssh/id_rsa",
}

file { '/home/vagrant/.ssh/id_rsa':
    require => Exec["insecure_private_key"],
    owner => 'vagrant',
    group => 'vagrant',
    mode => '0600',
}
