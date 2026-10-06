$f = "C:\Program Files (x86)\ossec-agent\ossec.conf"
Copy-Item $f "$f.bak" -Force

$txt = [System.IO.File]::ReadAllText($f)

if ($txt -match 'Microsoft-Windows-Sysmon/Operational') {
    "Блок Sysmon уже есть, ничего не добавляю"
} else {
    $block = @"

  <localfile>
    <location>Microsoft-Windows-Sysmon/Operational</location>
    <log_format>eventchannel</log_format>
  </localfile>

  <localfile>
    <location>Microsoft-Windows-PowerShell/Operational</location>
    <log_format>eventchannel</log_format>
  </localfile>

"@
    $i = $txt.LastIndexOf('</ossec_config>')
    $new = $txt.Substring(0, $i) + $block + $txt.Substring($i)
    [System.IO.File]::WriteAllText($f, $new, (New-Object System.Text.UTF8Encoding($false)))
    "Блоки добавлены"
}

Restart-Service WazuhSvc
Start-Sleep 5
Get-Content "C:\Program Files (x86)\ossec-agent\ossec.log" -Tail 15
