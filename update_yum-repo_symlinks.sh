#!/bin/bash

date

export MASTER="/var/www/html/pub/ovirt-master-snapshot/rpm/el7/noarch"
export OVIRT42="/var/www/html/pub/ovirt-4.2-snapshot/rpm/el7/noarch"
export OVIRT43="/var/www/html/pub/ovirt-4.3-snapshot/rpm/el7/noarch"
export YUMREPO="/var/www/html/pub/yum-repo"

ln -sf `ls "${MASTER}"/ovirt-release-master-4* |tail -n 1` "${YUMREPO}/ovirt-release-master.rpm"
ln -sf `ls "${MASTER}"/ovirt-release-master-experimental-4* |tail -n 1` "${YUMREPO}/ovirt-release-master-experimental.rpm"
ln -sf `ls "${OVIRT42}"/ovirt-release42-snapshot-4* |tail -n 1` "${YUMREPO}/ovirt-release42-snapshot.rpm"
ln -sf `ls "${OVIRT43}"/ovirt-release43-snapshot-4* |tail -n 1` "${YUMREPO}/ovirt-release43-snapshot.rpm"
echo "-------------------------------"
