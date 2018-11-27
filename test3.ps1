$Output= @()
$Offline = @()
$Online = @()


$names = Get-content "hnames.txt"
foreach ($name in $names){
  if (Test-Connection -ComputerName $name -Count 1  -ErrorAction SilentlyContinue){
   $Online+= "$name"
   $Output+= "$name,up"
   Write-Host "$Name,up"
  }
  else{
	$Offline+= "$name"
	$Output+= "$name,down"
    Write-Host "$Name,down"
  }
}
$Output | Out-file "C:\support\result.csv"
$Offline | Out-file "C:\support\offline.csv"
$Online | Out-file "C:\support\onine.csv"