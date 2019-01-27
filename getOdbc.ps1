# Open registry to check for ODBC / DSN items.

$boxName = $env:COMPUTERNAME
#$getOldDbOdbc = Get-ItemProperty -Path 'HKLM:\Software\Wow6432Node\ODBC\ODBC.INI\ODBC Data Sources'
$getDbOdbc = Get-ChildItem -Path 'HKLM:\Software\Wow6432Node\ODBC\ODBC.INI'
$getDb2Odbc = Get-ChildItem -Path 'HKLM:\Software\ODBC\ODBC.INI'


Write-Warning "If no details, very likely no System DSNs defined on $boxName"
Write-Output $getDbOdbc
Write-Output $getDb2Odbc
