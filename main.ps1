#Requires -Version 3

$cd = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

cd $cd

<#
Code that doesn't change goes in this file which just 
loads functions and executes them. The function loading
logic could even exist in another while which is dot-included.
#>

while ($true) {

    $funcs = gci funcs\*.ps1

    $test_funcs = @()

    foreach ($f in $funcs) {
        $func_file = $f.FullName    
        $test_funcs += . $func_file
    }

    $test_funcs | % { $_.Invoke("Hello world") }

    Start-Sleep -Seconds 1
}