Function SmolPaswurtGen {
    param (
        [int]$len
    )
    $tmp = ""
    for ($i = 0; $i -le $len; $i++) {
        $dup = [char]$(Get-Random -Minimum 33 -Maximum 126)
        if ($tmp.length -lt $len) {
            if (!$tmp.Contains($dup)) {
                $tmp += $dup
            }
        }
    }
    $tmp
}
