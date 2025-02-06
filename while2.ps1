$num = 0

while ($num -ne 5)
{
    if ($num -eq 1) { $num = $num + 3 ; Continue }
    $num++
    Write-Host $num
}