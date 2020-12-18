Import-Module -Name ExchangeOnlineManagement
Connect-Exchangeonline
Set-OrganizationConfig -FocusedInboxOn $false
