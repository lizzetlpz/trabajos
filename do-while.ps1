$valor = 5
$multiplicacion = 1
do
{
    $multiplicacion = $multiplicacion * $valor
    $valor--
}
while ($valor -gt 0)

Write-Host $multiplicacion