YandexTank101
=============

Development environments based on [Ubuntu Server 13.10](http://releases.ubuntu.com/13.10/) managed by Vagrant & Puppet for [Yandex.Tank](http://api.yandex.ru/tank/) research.

ROADMAP
-------

1. Add Wordpress for HTTP stateless tests.
2. Add Memcache load test example.
3. Cover with functional tests.

INSPIRED BY
-----------

![RAZOR 1911](https://raw.githubusercontent.com/alexanderilyin/YandexTank101/master/images/razor1911.png)

REQUIREMENTS
------------

1. [VirtualBox](https://www.virtualbox.org)
2. [Vagrant](http://www.vagrantup.com)

INSTALLATION
------------

Follow simple steps to get two VMs with Yandex.Tank on 1st and web services on 2nd.

```
git clone git@github.com:alexanderilyin/YandexTank101.git
cd YandexTank101
git submodule init
git submodule update
vagrant up
vagrant ssh yandex
cd /vagrant
yandex-tank
```

ENVIRONMENT
===========

1. `172.16.0.10` — IP for VM with Yandex.Tank.
2. `172.16.0.20` — IP for VM with web services.
3. Monitoring will be available at http://172.16.0.10:8080/.

![Battle City Yellow Tank](https://raw.githubusercontent.com/alexanderilyin/YandexTank101/master/images/tank_yellow.png)

> _— PEW PEW MOTHERF*CKER!_
