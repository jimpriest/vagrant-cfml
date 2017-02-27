# Vagrant CFML

This project will stand up a complete (albiet simple) CFML development environment using Vagrant.

## CFML Development Environment

* Ubuntu Server v14.04 LTS (Trusty Tahr) 64bit
* Apache 2
* Lucee v5
* MariaDB

## My Configuration

This was configured to run in my environment. YMMV.

I'm running:

* Linux Mint 18 (Ubuntu 16.04 LTS)
* VirtualBox 5.1 (installed via apt)
* Vagrant 1.9.1

## Prerequisites

### Required

It is assumed you have VirtualBox and Vagrant installed:

* [VirtualBox](https://www.virtualbox.org/) (v5.1.x)
* [Vagrant](https://www.vagrantup.com/downloads.html) (v1.9.x)

Note: If you install via apt - verify the correct versions were installed!

### Highly Recommended

Once Vagrant is installed I'd suggest installing the following Vagrant plugins:

* [vagrant-hostsupdater](https://github.com/cogitatio/vagrant-hostsupdater)
* [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest)

---

## Installation

Clone the repo and run 'vagrant up':

```bash
git clone https://github.com/jimpriest/vagrant-cfml.git
cd vagrant-cfml/vagrantroot && vagrant up
```

Note: The first time you clone the repo and bring the box up, it may take several minutes.
If it doesn't explicitly fail/quit, then it is still working. Be patient.

Once the Vagrant box finishes and is ready for use, you should see something like this in your terminal:

```bash
==> default: ========================================================================
==> default: http://www.vagrant-cfml.local (192.168.123.45)
==> default:  
==> default: Lucee Server/Web Context Administrators
==> default:  
==> default: http://www.vagrant-cfml.local/lucee/admin/server.cfm
==> default: http://www.vagrant-cfml.local/lucee/admin/web.cfm
==> default:  
==> default: Common Lucee admin password: password
==> default: -----------------------------------------------------------------------
==> default: Apache web root is default: /var/www/html
==> default:  
==> default: This directory is mapped to /webroot directory in this project (see Vagrantfile)
==> default: You can place your project code in this directory.
==> default: -----------------------------------------------------------------------
==> default: Database Server Info
==> default:  
==> default: Server: db.vagrant-cfml.local
==> default: Port: 3306
==> default: User: root
==> default: Password: password
==> default: ========================================================================
```

## Post Install

Once you see that, you should be able to browse to [http://www.vagrant-cfml.local/](http://www.vagrant-cfml.local/)
or [http://192.168.123.45/](http://192.168.123.45/)

Iit may take a few minutes the first time a page loads after bringing your box up, subsequent requests should be much faster.

There is a simple index.cfm by default in the wwwroot folder which will ensure CFML and MariaDB are working correctly.

You may either place your .cfm files in this wwwroot directory or adjust the Vagrantfile 'synced_webroot_local' path to point to a different location.

If you change the vagrantfile you will need to reload Vagrant:

```
vagrant reload
```

---

## References / Useful Links

* Rory Laitila's [Lucee Git Book](https://rorylaitila.gitbooks.io/lucee/content/vagrant.html)

This project was heavily influenced by (ie: I copied a lot of stuff from):

* Mike Sprague's [Vagrant LEMTL](https://github.com/mikesprague/vagrant-lemtl)
* Ortus Solutions [Vagrant/CentOS/Lucee](https://github.com/Ortus-Solutions/vagrant-centos-lucee)

## Disclaimer

* It works on my system :)
* There is no security baked in! This is intended for development use only.
* It is pitch black. You are likely to be eaten by a grue.