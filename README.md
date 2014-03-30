YandexTank101
=============

Development environments based on [Ubuntu Server 13.10](http://releases.ubuntu.com/13.10/) managed by Vagrant & Puppet for [Yandex.Tank](http://api.yandex.ru/tank/) research.

INSPIRED BY
-----------

![RAZOR 1911](http://upload.wikimedia.org/wikipedia/ru/5/50/RAZOR_NFO.png)

REQUIREMENTS
------------

1. [VirtualBox](https://www.virtualbox.org).
2. [Vagrant](http://www.vagrantup.com).

INSTALLATION
------------

1. `git clone git@github.com:alexanderilyin/YandexTank101.git`.
2. `cd YandexTank101`.
3. `git submodule init && git submodule update`.
4. `vagrant up`.
5. `vagrant ssh yandex`.
6. `cd /vagrant`.
7. `yandex-tank`.

Monitoring will be available at http://172.16.0.10:8080/.

![Battle City Yellow Tank](https://raw.githubusercontent.com/alexanderilyin/YandexTank101/master/images/tank_yellow.png)

> _— PEW PEW MOTHERF*CKER!_
