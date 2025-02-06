$num = 10

for($i = 2; $i -lt 10; $i++)
{
    if ($i -eq 5) { Continue }
    $num = $num+$i
}

Write-Host $num
Write-Host $i