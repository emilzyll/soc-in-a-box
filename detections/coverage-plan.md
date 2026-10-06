# ATT&CK coverage plan

Lab: DC01 (Windows Server 2022), WS01 (Windows), LNX01 (Ubuntu 26.04), SIEM: Wazuh on WAZUH.
Status values: planned / test run / detected / tuned.

| ID | Technique | Tactic | Log source | Atomic Red Team test | Status | Notes |
|---|---|---|---|---|---|---|
| T1059.001 | PowerShell | Execution | Sysmon EID 1, PowerShell 4104 (script block) | T1059.001 | planned | Encoded commands, download cradles |
| T1003.001 | OS Credential Dumping: LSASS Memory | Credential Access | Sysmon EID 10 (ProcessAccess), EID 1 | T1003.001 | planned | Needs ProcessAccess rule for lsass.exe in sysmon-config.xml |
| T1053.005 | Scheduled Task | Persistence, Execution | Security 4698, Sysmon EID 1 | T1053.005 | planned | schtasks.exe command line |
| T1547.001 | Registry Run Keys / Startup Folder | Persistence | Sysmon EID 13 (RegistryEvent) | T1547.001 | planned | Check registry rules in Sysmon config |
| T1543.003 | Windows Service | Persistence, Privilege Escalation | System 7045, Security 4697 | T1543.003 | planned | New service creation |
| T1136.001 | Create Account: Local Account | Persistence | Security 4720, auditd ADD_USER, rule 100100 | T1136.001 | planned | Linux part partly covered by custom rule 100100 |
| T1110.001 | Brute Force: Password Guessing | Credential Access | Security 4625, auth.log | T1110.001 | planned | Threshold rule needed (many failures per source) |
| T1021.001 | Remote Services: RDP | Lateral Movement | Security 4624 (logon type 10), 4625 | T1021.001 | planned | Depends on RDP enabled on WS01 |
| T1087.001 | Account Discovery: Local Account | Discovery | Sysmon EID 1 (net.exe, net1.exe) | T1087.001 | planned | net user / net localgroup already visible in Wazuh |
| T1033 | System Owner/User Discovery | Discovery | Sysmon EID 1 (whoami.exe) | T1033 | planned | Low severity alone, useful in sequence |
| T1070.001 | Indicator Removal: Clear Windows Event Logs | Defense Evasion | Security 1102, System 104 | T1070.001 | planned | High-value, low noise |
| T1105 | Ingress Tool Transfer | Command and Control | Sysmon EID 1 (certutil, bitsadmin), EID 3 | T1105 | planned | Network-isolated lab, test with local HTTP server |
| T1003.008 | OS Credential Dumping: /etc/passwd and /etc/shadow | Credential Access | auditd (key shadow_changes), rule 100101 | T1003.008 | planned | Rule 100101 watches writes only; add read watch |
| T1548.003 | Sudo and Sudo Caching | Privilege Escalation | auditd (key sudo_exec, root_cmd) | T1548.003 | planned | No custom rule yet, only auditd rules loaded |
| T1098 | Account Manipulation | Persistence | Security 4728, 4732 (group membership), auditd sudoers_changes | T1098 | planned | Rule 100102 covers sudoers on Linux |
