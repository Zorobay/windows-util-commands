<#
Generates random strings of desired length
#>

param(
    [Parameter(Mandatory=$True, Position=0, ValueFromPipeline=$false)]
    [int]$len=0,

    [string]$p=""
)

$chars = @('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'x', 'y', 'z', 'å', 'ä', 'ö')
$len = [math]::max($len - $p.Length, 0)
$output = ''

for ($i = 0; $i -lt $len; $i++) {
    $idx = Get-Random -Minimum 0 -Maximum $chars.Length
    $output = $output + $chars[$idx]
} 

$output = $p + $output

Set-Clipboard -Value $output

Write-Host $output
Write-Host "The output has been copied to the clipboard"