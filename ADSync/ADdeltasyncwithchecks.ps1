try
	{
		import-module ADSync
	}
catch
	{
		install-module ADSync
	}
if (!$error)
	{
		$scheduler=Get-ADsyncscheduler
		If ( $scheduler.synccycleinprogress -eq $false)
	{
		Start-ADSyncSyncCycle -PolicyType Delta
	}
Else
	{
		Write-Warning "A sync is currently in progress, please try again later."
		Pause
	}
