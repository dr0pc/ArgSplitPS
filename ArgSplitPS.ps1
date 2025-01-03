#Luis Madakacked Carreto UwU

# Función principal
function Psplit-args {
    param (
        [string]$inputString
    )

    # Inicializar un array para almacenar los caracteres individuales
    $charArray = @()

    # Recorrer cada carácter de la cadena y almacenarlo en el array
    for ($i = 0; $i -lt $inputString.Length; $i++) {
        $charArray += $inputString.Substring($i, 1)
    }

    # Asignar cada carácter a una variable dinámica ($char1, $char2, $char3, etc.)
    for ($j = 0; $j -lt $charArray.Length; $j++) {
        # Crear variables dinámicas con nombres como $char1, $char2, $char3, etc.
        Set-Variable -Name ("char" + ($j + 1)) -Value $charArray[$j]
    }

    # Mostrar las variables dinámicas creadas, agregando comillas al valor
    for ($j = 0; $j -lt $charArray.Length; $j++) {
        $varName = "char" + ($j + 1)
        $charValue = (Get-Variable -Name $varName).Value
        Write-Host ("`$$($varName) = `"$charValue`"")
    }

    # Concatenar las variables dinámicas en una fórmula que se muestra al final
    $pwndFormula = ""
    for ($j = 0; $j -lt $charArray.Length; $j++) {
        $varName = "char" + ($j + 1)
        if ($j -eq 0) {
            $pwndFormula = "`$$varName"
        } else {
            $pwndFormula += " + `$$varName"
        }
    }

    # Mostrar la fórmula de concatenación
    Write-Host "`$pwnd = $pwndFormula"
}

# Si se llama al script con argumentos
if ($args.Length -gt 0) {
    Process-Input -inputString $args[0]
}
