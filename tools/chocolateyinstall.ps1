$ErrorActionPreference = 'Stop'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$exePath      = "$toolsDir\$env:ChocolateyPackageName.exe"
$urlBase      = "https://github.com/MrGlockenspiel/activate-linux/releases/download/v$env:ChocolateyPackageVersion"
$url          = "$urlBase/activate-windows-mingw32.exe"
$url64        = "$urlBase/activate-windows-clang64.exe"
$checksumType = 'sha256'
$checksum     = '38BD8F673E2387E0080F2BE17375314D6251D127FB4F13B3C7A47DE6EC64B7E6'
$checksum64   = 'ECF82652CCDD7BAD962EFFB378B198B357DB5FDA0EE5380B39F6F648CD13A94C'
Get-ChocolateyWebFile $packageName $exePath $url $url64 $checksum $checksumType $checksum64 $checksumType
