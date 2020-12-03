$user = $read-host "Please enter the email address of the user to be removed;"
try
	{
		import-module msonline
	}
catch
	{
		install-module msonline
	}
if (!$error)
	{
		connect-msolservice
		remove-msoluser -userprincipalname "$user" -removefromrecyclebin
	}
