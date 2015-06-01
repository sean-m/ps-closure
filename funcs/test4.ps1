{
    param ($in)

    $tmp = $in.ToCharArray()

    [Array]::Reverse($tmp)

    $msg = $tmp -join ""
    
    Write-Host $msg -ForegroundColor Cyan
}