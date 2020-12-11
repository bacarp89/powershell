Import-Module -Name ExchangeOnlineManagement
Connect-Exchangeonline
Set-OrganizationConfig -AllowPlusAddressInRecipients $true
