=================
FUTURE BLUEPRINTS
=================

Ceilometer
==========

Data collection for Nova scheduler
----------------------------------
https://blueprints.launchpad.net/ceilometer/+spec/nova-scheduler-as-client

Replace nova scheduler data collection mechanism with Ceilometer back-end.

Support for non-libvirt hypervisors
-----------------------------------
https://blueprints.launchpad.net/ceilometer/+spec/non-libvirt-hw

Current compute pollster for disk IO and probably CPU time only supports
libvirt. It should support all hypervisors supported by nova.

Cinder
======

Local storage as a volume
-------------------------
https://blueprints.launchpad.net/cinder/+spec/local-storage-volume

Plugin for Cinder which allows to create volume in local storage and
create incremental snapshots in other storage back-ends. Plugin name
is 'island'.
It overlaps with the idea to pass all storage management from Nova
to Cinder, including ephemeral volumes.

Host aggregates and aggregate zones
-----------------------------------
https://blueprints.launchpad.net/cinder/+spec/aggregates-in-cinder

Add aggregate capability to Cinder to match Nova's availability zones
and host aggregates.

Cinder agent
------------
https://blueprints.launchpad.net/cinder/+spec/cinder-agent

Client-side service of Cinder which allows to attach and detach volumes.

Bare metal volumes
------------------
https://blueprints.launchpad.net/cinder/+spec/bare-metal-volumes

Support bare metal node's local disks like volumes.

Glance
======

Unified request identifier
--------------------------
https://blueprints.launchpad.net/glance/+spec/cross-service-request-id

Create unified unique request identifier across all OpenStack services
which will allow more efficient tracking and debugging of user activity.
Similar blueprint also exists in Nova along with some code, see below.

Public cloud Glance service
---------------------
https://blueprints.launchpad.net/glance/+spec/exposing-glance-for-public-clouds

Current model of interaction between Nova and Glance assumes that
operations on imaged are managed via Nova API. For public cloud, it is 
preferred that client has direct access to Glance API. This approach
requires numerous improvements to existing Glance server.

Horizon
=======

Ironic
======

Keystone
========
User password expiration support
--------------------------------
https://blueprints.launchpad.net/keystone/+spec/user-password-expiration

User password with limited life span is a requirement in some enterprise
environments. This proposal addresses the demand by introducing:

  * specific exception and HTTP response ('401 Password expired') in Keystone API;
  * storing password TTL param in database and passing 'expired password'-specific
    exception to the core from SQL identity backend;
  * handling 'password expired' error and passing 'expired password'-specific
    exception to the core from LDAP identity backend.

DNC backend for Service Catalog
-------------------------------
https://blueprints.launchpad.net/keystone/+spec/dns-catalog

DNS is the standard way to do most of the operations that the Keystone Catalog
needs to perform. In order to move toward standardizing how Open Stack and DNS
interoperate, Keystone will be able to store the the Service Catalog in DNS.

Nova
====
Reset established VNC connections
---------------------------------
https://blueprints.launchpad.net/nova/+spec/reset-vnc-console

This is a security feature which allows user to tear down all active VNC connections
to the given instance in case the token validity period expired.

Deployer-friendly configuration files
-------------------------------------
https://blueprints.launchpad.net/nova/+spec/deployer-friendly-confs

This blueprint lists requirements and wishes from deployers to the way Nova should
handle configuration files.

Loadbalance instance storage paths
----------------------------------
https://blueprints.launchpad.net/nova/+spec/nova-instance-storage-loadbalancing

If you want LiveMigrations you are advised to have this directory on a centralized
storage, for example on NFS - as explained here:
http://docs.openstack.org/trunk/openstack-compute/admin/content/configuring-live-migrations.html

There might be good reasons for having more than 1 instance directory for VM
deployments - for example:

  - In a big lanscape you might want to have more than 1 central storage mounts,
    i.e. 2 NFS mounts
  - In compute-nodes with multiple local raid arrays you want to distribute
    instances over all arrays

Pre-caching Nova images
-----------------------
https://blueprints.launchpad.net/nova/+spec/nova-image-cache-management-2

This blueprint continues on from https://blueprints.launchpad.net/nova/+spec/nova-image-cache-management
and adds the pre-caching of popular images. That specification is found under the
previous blueprint.

Neutron
=======
Upgrade Nova network to Neutron
-------------------------------
https://blueprints.launchpad.net/neutron/+spec/nova-to-quantum-upgrade

Provides a solution to upgrade from traditional Nova networking to Quantum networking.

Swift
=====
Encrypting objects in Swift
---------------------------
https://blueprints.launchpad.net/swift/+spec/encrypted-objects

We describe extending Swift to provide server side encryption. We detail in addition
a key manager to hold encrypted keys based on Swift. Together the two protect data
and keys and make object encryption more transparent.
