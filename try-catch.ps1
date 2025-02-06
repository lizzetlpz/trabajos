try
{
    Write-Output "Todo bien"
}
catch
{
    Write-Output "Algo lanzó una excepción"
    Write-Output $_
}

try
{
    Start-Something -ErrorAction Stop
}
catch
{
    Write-Output "Algo generó una excepción o uso Write-Error"
    Write-Output $_
}