foreach ($archivo in Get-ChildItem)
{
    if ($archivo.length -ge 10KB)
    {
        Write-Host $archivo -> [$archivo.length]
    }
}