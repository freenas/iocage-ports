echo "..shebang bash"
for i in \
	agent/src/com/cloud/agent/resource/consoleproxy/*.java \
	utils/src/main/java/com/cloud/utils/script/*.java \
	scripts/vm/systemvm/*.py \
	scripts/vm/systemvm/*.sh \
	setup/bindir/cloud* \
	plugins/hypervisors/hyperv/*.sh \
	test/scripts/usage/*.sh \
	server/src/com/cloud/server/*.java \
	systemvm/debian/opt/cloud/bin/setup/*.sh \
	scripts/vm/hypervisor/xenserver/vmops \
	systemvm/debian/opt/cloud/bin/*.py \
	systemvm/debian/opt/cloud/bin/*.sh \
	tools/appliance/systemvmtemplate/scripts/*.sh \
	services/secondary-storage/server/src/org/apache/cloudstack/storage/resource/*.java \
	plugins/hypervisors/kvm/src/com/cloud/hypervisor/kvm/resource/*.java\
	scripts/vm/hypervisor/xenserver/*.sh \
	utils/src/test/java/com/cloud/utils/*.java \
	setup/db/*.sh \
	utils/src/main/java/com/cloud/utils/SwiftUtil.java \
	scripts/vm/hypervisor/xenserver/xcposs/vmops \
	scripts/vm/hypervisor/kvm/*.sh \
	agent/bindir/*.in \
	server/scripts/vmops-fix-mysql-config \
	scripts/util/keystore-cert-import \
	scripts/util/qemu-ivs-ifup \
	scripts/vm/hypervisor/kvm/*.sh \
	scripts/vm/hypervisor/*.sh \
	scripts/vm/network/*.py \
	scripts/vm/network/*.sh \
	services/secondary-storage/server/src/org/apache/cloudstack/storage/template/*.java \
	test/scripts/script_lock_test/*.sh \
	test/scripts/*.sh \
	test/scripts/usage/*.sh \
	test/conf/deploy.properties \
	test/integration/component/*.sh \
	scripts/storage/qcow2/*.sh \
	scripts/storage/secondary/*.sh \
	plugins/hypervisors/kvm/test/com/cloud/hypervisor/kvm/resource/wrapper/*.java \
	plugins/hypervisors/ovm3/src/test/resources/scripts/*.sh \
	scripts/storage/secondary/*.sh \
	scripts/storage/secondary/cloud-install-sys-tmplt \
	scripts/installer/*.sh \
	scripts/util/qemu-ivs-ifup \
	scripts/util/keystore-setup \
	scripts/util/qemu-ifup \
	tools/devcloud4/common/configure-network.sh

do
sed -i .bak 's,/bin/bash,/usr/local/bin/bash,' $i
done

echo ".. Shebang mount"
for a in \
        server/conf/cloudstack-sudoers.in \
        tools/appliance/systemvmtemplate/scripts/finalize.sh

do
sed -i .bak 's,/bin/mount,/sbin/mount,' $a
sed -i .bak 's,/bin/umount,/sbin/umount,' $a
sed -i .bak 's,/bin/keytool,/local/bin/keytool,' $a
sed -i .bak 's,/etc/sudoers.d,/usr/local/etc/sudoers.d,' $a
done

echo ".. Shebang ipmi"
for a in \
	plugins/outofbandmanagement-drivers/ipmitool/src/org/apache/cloudstack/outofbandmanagement/driver/ipmitool/IpmitoolOutOfBandManagementDriver.java \
	scripts/util/ipmi.py
do
sed -i .bak 's,/usr/bin/ipmitool,/usr/local/bin/ipmitool,' $a
done



echo "Shebang python.."

for i in \
        agent/bindir/*.in \
        setup/bindir/*.in \
        plugins/hypervisors/ovm3/src/test/resources/scripts/*.py \
        test/selenium/cstests/*/*.py \
        scripts/network/*/*.py \
        scripts/vm/network/*.py \
        python/incubation/* \
        python/bindir/* \
        scripts/vm/hypervisor/xenserver/x*/* \
        scripts/vm/hypervisor/xenserver/*.sh \
        scripts/vm/hypervisor/xenserver/*.py \
        scripts/vm/hypervisor/xenserver/c* \
        scripts/vm/hypervisor/xenserver/s* \
        scripts/vm/hypervisor/xenserver/o* \
        scripts/vm/hypervisor/xenserver/v* \
        scripts/vm/hypervisor/xenserver/xen-* \
        scripts/vm/hypervisor/ovm3/* \
        utils/src/*/java/com/cloud/utils/*.java \
        services/secondary-storage/server/src/org/apache/cloudstack/storage/resource/*.java \
        tools/*/*.py \
        client/bindir/*.in \
        scripts/vm/network/vnet/*.py \
        scripts/util/*.py \
        scripts/storage/secondary/* \
        plugins/hypervisors/baremetal/src/com/cloud/baremetal/networkservice/BareMetalResourceBase.java \
        test/selenium/common/*.py \
        test/systemvm/*.py
do
sed -i .bak 's,/usr/bin/python,/usr/local/bin/python,' $i
done

echo "Cleanup .bak files"
find . -type f -name "*.bak" -exec rm -f {} \;

