#Sets Variables for script

#vCenter where $NSXTMGR was deployed to
$VISERVER="vcsa-01a.corp.local"
$VIUSER="administrator@vsphere.local"
$VIPASSWORD="VMware1!"

#NSXTMGR that was built using Ansible
$NSXTMGR="nsxt-01a.corp.local"

#Sets the memory reservation of the $NSXTMGR
$MEMRESERVMB="100"

Connect-VIServer -Server $VISERVER -User $VIUSER -Password $VIPASSWORD -InformationAction Ignore -ErrorAction Ignore
Stop-VM -Kill $NSXTMGR -Confirm:$false
Remove-VM -VM $NSXTMGR -Confirm:$false
