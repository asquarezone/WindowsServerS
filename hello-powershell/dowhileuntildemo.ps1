$number = 0
do {
    Write-Output $number
    $number++
} while ($number -lt 10)
Write-Output "This is begining of do until"
$number = 0
do {
    Write-Output $number
    $number++
} until ($number -ge 20)