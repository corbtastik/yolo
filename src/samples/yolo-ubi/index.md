---
layout: default
tags:
- containers
- redhat
- podman
- ubi
---

### Introduction

Notes and whatnot for working with Red Hat Universal Base Images (__aka:__ `ubi`).

* UBI is an OS for containers that's a subset of RHEL
* UBI Images are available from the following registries
    * `registry.redhat.io`: Authenticated registry
    * `registry.access.redhat.com`: Unauthenticated registry
* UBI Repositories
    * `/etc/yum.repos.d/ubi.repo`: List of UBI repositories
    * Repository Browser: [https://cdn-ubi.redhat.com/content/public/ubi/dist/](https://cdn-ubi.redhat.com/content/public/ubi/dist/)
* UBI Package Repositories
    * `ubi-8-baseos-rpms`: UBI 8 base OS bits, freely redistributable
    * `ubi-8-appstream-rpms`: RPM modules, freely redistributable
* Third-party Repositories
    * Add a `.repo` file to `/etc/yum.repos.d`

```bash
# List installed RPM packages
rpm -qa

# List available RPM packages
yum list all

# List enabled repositories
yum repolist

# Disable the RH subscription mgmt plugin by adding...
yum repolist --disableplugin=subscription-manager

# List available RPM modules
yum module list

# Limit yum to only freely redistributable repos by adding...
yum module list --disablerepo='*' --enablerepo=ubi-8-baseos-rpms --enablerepo=ubi-8-appstream-rpms
```

### References

1. [CentOS Stream RPM Packages](http://mirror.centos.org/centos/8-stream/)
2. https://centos.pkgs.org/
3. [Extra Packages for Enterprise Linux](https://docs.fedoraproject.org/en-US/epel/)




