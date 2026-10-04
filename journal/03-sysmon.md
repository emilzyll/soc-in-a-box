# 02 — Sysmon — 2026-10-04
- Done: installed Sysmon v15 on DC01 and WS01 with SwiftOnSecurity config (detections/configs/sysmon-config.xml); transferred files into the isolated network via a Python HTTP server on the host bound to 10.10.10.1; verified Event ID 1 (process create) with Image, CommandLine, ParentImage and Hashes
