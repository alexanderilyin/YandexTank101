YandexTank101
=============

Development environments based on [Ubuntu Server 13.10](http://releases.ubuntu.com/13.10/) managed by Vagrant & Puppet for [Yandex.Tank](http://api.yandex.ru/tank/) research.

ROADMAP
-------

- [ ] Add Wordpress for HTTP stateless tests;
- [ ] Add Memcache load test example;
 

INSPIRED BY
-----------

![RAZOR 1911](http://upload.wikimedia.org/wikipedia/ru/5/50/RAZOR_NFO.png)

REQUIREMENTS
------------

1. [VirtualBox](https://www.virtualbox.org).
2. [Vagrant](http://www.vagrantup.com).

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

Monitoring will be available at http://172.16.0.10:8080/.

![Battle City Yellow Tank](https://raw.githubusercontent.com/alexanderilyin/YandexTank101/master/images/tank_yellow.png)

> _— PEW PEW MOTHERF*CKER!_
