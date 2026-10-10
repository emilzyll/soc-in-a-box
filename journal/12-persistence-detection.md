# 12 — persistence-detection — 2026-10-07
Persistence detections: scheduled task + new service — 2026-10-10
Done: created scheduled task via schtasks /create and Windows service via New-Service on WS01; default rule for schtasks: 67027 (level 3, Security 4688 with command line); wrote custom rule 100105 (level 10, child of 67027, regex on schtasks /create, MITRE T1053.005); rule 100106 for new service (System 7045) already existed and fired correctly (level 10, MITRE T1543.003); both alerts confirmed; coverage-plan updated to detected
