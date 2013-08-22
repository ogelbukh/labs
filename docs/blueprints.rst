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


