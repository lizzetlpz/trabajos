trap 
{ 
   Write-Output $PSItem.ToString ()
}
throw [System.Exception] ::new ('primero')
throw [System.Exception] ::new ('segundo')
throw [System.Exception] ::new ('tercero')
