# 09 — First Detection (T1136.001) — 2026-10-07
Done: ran Atomic Red Team test for T1136.001 on WS01; found default Wazuh events (Security 4720, Sysmon Event ID 1 with net.exe); wrote custom rule in local_rules.xml (ID 100100+) mapped to T1136.001; restarted wazuh-manager; repeated the attack and confirmed the alert with the custom rule.id; ran cleanup; set status of T1136.001 to detected in coverage-plan.md; saved rule to detections/wazuh-rules/local_rules.xml.

