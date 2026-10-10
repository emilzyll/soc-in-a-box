# 13 — Account manipulation + discovery detections — 2026-10-11
Done: added soctestuser to local Administrators group (net localgroup) on WS01; default rule 60154 "Administrators Group Changed" (level 12) already covers this; wrote custom rule 100107 (child of 60154, MITRE T1098); ran net user / net localgroup / whoami /all for discovery; found built-in rule 92039 "A net.exe account discovery command was initiated" already tagged MITRE T1087; wrote custom rule 100108 (child of 92039, level 8); both alerts confirmed; coverage-plan updated to detected

