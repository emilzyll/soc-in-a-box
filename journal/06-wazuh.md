# 03 — Wazuh log collection — 2026-10-06
Done: installed Wazuh all-in-one (manager, indexer, dashboard) on WAZUH, 10.10.10.30; connected agents DC01, WS01, LNX01; added Sysmon and PowerShell event channels to ossec.conf on DC01 and WS01 via patch-ossec.ps1; audit.log collection on LNX01; wrote first custom rules 100100-100102 (auditd keys passwd_changes, shadow_changes, sudoers_changes); verified Sysmon Event ID 1 on WS01 (net.exe/powershell.exe) and auditd alert 100100 on LNX01 (useradd/userdel); snapshot wazuh-log-collection

