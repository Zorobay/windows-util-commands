$chars = @('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'x', 'y', 'z', 'å', 'ä', 'ö')
$len = $args[0]
$output = ''

$range = 0..($len-1)

foreach($x in $range) {
    $i = Get-Random -Minimum 0 -Maximum $chars.Length
    $output = $output + $chars[$i]
}

Set-Clipboard -Value $output

Write-Host $output
Write-Host "The output has been copied to the clipboard"