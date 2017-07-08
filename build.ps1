param([switch]$watch = $false)

$source = './site'
$dist = '../dist'


if ($watch -eq $true) {
    & bin\hugo.exe server -s $source --watch -d $dist
}
else {
    & bin\hugo.exe -s $source -d $dist
}