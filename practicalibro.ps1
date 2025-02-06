$Variable1="Hola"
$Variable2="Que tal?"
$variable3=100
${VAR iable4}=200
New-Variable -Name variable5 -Value 300
$variable5
$Variable1
$Variable2
$variable3
${VAR iable4}
$Variable1 + $Variable2
$variable3+${VAR iable4}
$variable3-${var iable4}
$Variable1+$Variable2
$$
$variable1 + $variable2
$^
$Variable1 + $Variable2
$?
$Error
Get-Help about_automatic_variables
get-help about_preference_variables
[int]$Variable1=100
[int]$Variable2="Hola"
$Variable1.GetType()
cat .\condicionales.ps1
.\condicionales.ps1
cat .\condicionales2.ps1
.\condicionales2.ps1
$PSVersionTable
$mensaje = (Test-Path $Path) ? "Path existe" : "Path no encontrado"
$mensaje
cat .\switch1.ps1
.\switch1.ps1
cat .\switch2.ps1
.\switch2.ps1
cat .\switch3.ps1
.\switch3.ps1
cat .\switch4.ps1
.\switch4.ps1
cat .\switch5.ps1
.\switch5.ps1
cat .\switch6.ps1
.\switch6.ps1
cat .\switch7.ps1
.\switch7.ps1
1 -eq "1.0"
"1.0" -eq 1
cat .\for1.ps1
.\for1.ps1
cat .\for2.ps1
.\for2.ps1
cat .\foreach1.ps1
.\foreach1.ps1
cat .\foreach2.ps1
.\foreach2.ps1
cat .\while.ps1
.\while.ps1
cat .\while2.ps1
.\while2.ps1
cat .\do-while.ps1
.\do-while.ps1
cat .\do-until.ps1
.\do-until.ps1
cat .\break1.ps1
.\break1.ps1
cat .\break2.ps1
.\break2.ps1
cat .\continue1.ps1
.\continue1.ps1
cat .\continue2.ps1
.\continue2.ps1
Get-Command -Type Cmdlet | Sort-Object -Property Noun | Format-Table -GroupBy Noun 
Get-Command -Name Get-ChildItem -Args Cert: -Syntax
Get-Command -Name dir 
Get-Command -Noun WSManInstance 
Get-Service -Name "LSM" | Get-Member
Get-Service -Name "LSM" | Get-Member -MemberType Property
Get-Item .\test.txt | Get-Member -MemberType Method
Get-Item .\test.txt | Select-Object Name, Length 
Get-Service | Select-Object -Last 5
Get-Service | Select-Object -First 5
Get-Service | Where-Object {$_.Status -eq "Running"}
(Get-Item .\test.txt).IsReadOnly
(Get-Item .\test.txt).IsReadOnly = 1
(Get-Item .\test.txt).IsReadOnly
Get-ChildItem *.txt
(Get-Item .\test.txt).CopyTo("C:\Users\Administrator\prueba.txt")
(Get-Item .\test.txt).Delete()
Get-ChildItem *.txt
$miObjeto = New-Object PSObject 
$miObjeto | Add-Member -MemberType NoteProperty -Name Nombre "Miguel"
$miObjeto | Add-Member -MemberType NoteProperty -Name Edad -Value 23
$miObjeto | Add-Member -MemberType ScriptMethod -Name Saludar -Value { Write-Host "¡Hola mundo!" }
$miObjeto = New-Object -TypeName PSObject -Property @{
$miObjeto | Add-Member -MemberType ScriptMethod -Name Saludar -Value { Write-Host "¡Hola mundo!" }
$miObjeto | Get-Member 
$miObjeto = [PSCustomObject] @{
$miObjeto | Add-Member -MemberType ScriptMethod -Name Saludar -Value { Write-Host "¡Hola mundo!" }
$miObjeto | Get-Member 
Get-Process
Get-Process -Name Acrobat | Stop-Process
Get-Process
Get-ChildItem *.txt | Get-Clipboard
Get-Service
Get-Service Spooler | Stop-Service
Get-Service
Get-Service
"Spooler" | Stop-Service
Get-Service
Get-Service
Get-Service
$miObjeto = [PSCustomObject]
$miObjeto | Stop-Service
Get-Service
Get-Service
Get-Verb
function Get-Fecha
Get-Fecha 
Get-ChildItem -Path Function:\Get-*
Get-ChildItem -Path Function:\Get-Fecha | Remove-Item
Get-ChildItem -Path Function:\Get-*
function Get-Resta {
Get-resta 10 5 
Get-resta -num2 10 -num1 5
Get-resta -num2 10
function Get-Resta {
Get-Resta -num2 10
function Get-Resta {
(Get-Command -Name Get-Rest).Parameters.Keys
function Get-Rest {
Gest-Rest 10 5 -Verbose 
Get-Module
Get-Module -ListAvailable
Get-Module
Remove-Module BitsTransfer 
Get-Module
Get-Command -Module BitsTransfer 
Get-Help BitsTransfer
$env:PSModulePath 
Import-Module BitsTransfer
Get-Module
cat .\try-catch.ps1
.\try-catch.ps1
cat .\trap.ps1
.\trap.ps1
ls
Import-Module BackupRegistry 
Get-Help Backup-Registry 
Backup-Registry -rutaBackup 'C:\tmp\Backups\Registro\' C:\Users\AdministratorC:\Users\Administrator puede q sea este C:\Users\Administrator
ls .\tmp\Backups\Registro\
vim .\Backup-Registry.ps1
Import-Module BackupRegistry -Force
Backup-Registry -rutaBackup 'C:\tmp\Backups\Registro\' C:\Users\Administrator
ls 'C:\tmp\Backups\Registro\'

cat .\trap.ps1
.\trap.ps1
ls
Get-Help Backup-Registry
Backup-Registry -rutaBackup 'C:\Users\Administrator\Downloads'
ls C:\Users\Administrator
Get-Date
ls C:\Users\Administrator
Get-ScheduledTask
Unregister-ScheduledTask
Unregister-ScheduledTask 'Ejecutar Backup del registro del sistema'
Get-ScheduledTask
Get-Service
Get-Service -Name Spooler 
Get-Service -DisplayName Hora*
Get-Service | Where-Object {$_.Status -eq "Running"}
Get-Service | >> Where-Object {$_.StartType -eq "Automatic"} | >> Select-Object Name, StartType
Get-Service -DependentServices Spooler 
Get-Service -RequiredServices Fax 
Stop-Service -Name Spooler -Confirm -PassThru 
Start-Service -Name Spooler -Confirm -PassThru 
Suspend-Service -Name stisvc -Confirm -PassThru
Get-Service | Where-Object CanPauseAndContinue -eq True 
Suspend-Service -Name Spooler 
Restart-Service -Name WSearch -Confirm -PassThru
Set-Service -Name dcsvc -DisplayName "Servicios de virtualzacion de credenciales de seguridad distirbuidas"
Set-Service -Name BITS -StartupType Automatic -Confirm -PassThru | Select-Object Name, StartType  
Set-Service -Name BITS -DisplayName "Transfeir archivos en segundo plano mediante el uso de ancho de banda de red inactivo"
Get-CimInstance Win32_Service -Filter 'Name = "BITS"' | Format-List Name, Description 
Set-Service -Name Spooler -Status Running -Confirm -PassThru
Set-Service -Name stisvc -Status Paused -Confirm -PassThru
Set-Service -Name BITS -Status Stopped -Confirm -PassThru
Get-Process
Get-Process -Name Acrobat
Get-Process -Name Search*
Get-Process -Id 13948
Get-Process WINWORD -FileVersionInfo
Get-Process WINWORD -IncludeUserName 
Get-Process WINWORD -Module
Stop-Process -Name Acrobat -Confirm -PassThru
Stop-Process -Id 10940 -Confirm -PassThru
Get-Process -Name Acrobat | Stop-Process -Confirm -PassThru
Start-Process -FilePath "C:\Windows\System32\notepad.exe" -PassThru
Start-Process -FilePath "cmd,exe" -ArgumentList "/c mkdir NuevaCarpeta" -WorkingDirectory "C:\Documents\FIC\06\ASO" -PassThru
Start-Process -FilePath "notepad.exe" -WindowStyle "Maximized" -PassThru
Start-Process -FilePath "C:\Documents\FIC\@6\A50\TT\TT.txt" -Verb Print -PassThru
Get-Process -Name notep*
Get-Process -Name notepad
Get-Process -Name notep*
Get-Process -Name notepad | Wait-Process
Get-LocalUser
Get-LocalUser -Name Miguel | Select-Object
Get-LocalUser -SID S-1-5-21-619924196-4045554399-1956444398-500 | Select-Object*
Get-LocalGroup
Get-LocalGroup -Name Administradores | Select-Object*
Get-LocalGroup -SID S-1-5-32-545 | Select-Object*
New-LocalUser -Name "Usuario1" -Descripcion "Usuario de prueba 1" -NoPassword 
New-LocalUser -Name "Usuario2" -Descripcion "Usuario de prueba 2" -Password (ConvertTo-SecureString -AsPlainText "12345" -Force)
Get-LocalUser -Name "Usuario1"
Remove-LocalUser -Name "Usuario1"
Get-LocalUser -Name "Usuario1"
Get-LocalUser -Name "Usuario2"
Get-LocalUser -Name "Usuario2" | Remove-LocalUser
Get-LocalUser -Name "Usuario2" 
New-LocalGroup -Name 'Grupo1' -Description 'Grupo de prueba 1'
Add-LocalGroupMember -Group Grupo1 -Member Usuario2 -Verbose 
Get-LocalGroupMember Grupo1
Remove-LocalGroupMember -Grouup Grupo1 -Member Usuario1
Remove-LocalGroupMember -Grouup Grupo1 -Member Usuario2
Get-LocalGroupMember Grupo1
Get-LocalGroup -Name "Grupo1"
Remove-LocalGroup -Name "Grupo1"
Get-LocalGroup -Name "Grupo1"
.\practicalibro.ps1
.\practicalibro.ps1
  