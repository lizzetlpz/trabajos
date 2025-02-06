$num = 10

for($i = 2; $i -lt 10; $i++)
{
    $num = $num+$i
    if ($i -eq 5) { Break }
}

Write-Host $num
Write-Host $i