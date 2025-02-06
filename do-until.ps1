$valor = 5
$multiplicacion = 1
do
{
    $multiplicacion = $multiplicacion * $valor
    $valor--
}
until ($valor -eq 0)

Write-Host $multiplicacion
