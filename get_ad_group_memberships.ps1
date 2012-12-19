import-module activedirectory

Function LogWrite
{
   Param ([string]$logstring)
   Add-content $logfile -value $logstring
}

$logFile="C:\support\group_membership.txt"

$the_groups=Get-ADGroup -Filter {GroupCategory -eq "Security"}

foreach ($item in $the_groups) 
{
        LogWrite $item
        $the_users=Get-ADGroupMember -Identity $item | FT Name -A | out-string
        LogWrite $the_users
}
