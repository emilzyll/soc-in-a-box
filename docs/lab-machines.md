# Lab Machines

All machines are on the isolated VMware network `vmnet2` (Host-only), subnet `10.10.10.0/24`, with no internet access. Addresses are static, DHCP is disabled.

| Name  | Role                                     | OS                  | IP            |
|-------|------------------------------------------|---------------------|---------------|
| DC01  | Domain controller (AD DS, DNS)           | Windows Server 2022 | `10.10.10.10` |
| WS01  | Domain-joined workstation                | Windows 11          | `10.10.10.20` |
| LNX01 | Linux server, log source                 | Ubuntu Server 24.04 | `10.10.10.30` |
| WAZUH | SIEM (Wazuh manager, indexer, dashboard) | Ubuntu Server 24.04 | `10.10.10.40` |
| SOAR  | Alert automation and enrichment          | Ubuntu Server 24.04 | `10.10.10.50` |
| Host  | Laptop with VMware, access to web UIs    | Linux Mint          | `10.10.10.1`  |

## Network settings

- Subnet: `10.10.10.0/24`
- Mask: `255.255.255.0`
- Gateway: none (isolated network)
- DNS for all machines: `10.10.10.10` (DC01)
- Domain: `soc.lab`

## Data flows

- **DC01, WS01, LNX01 → WAZUH**: Wazuh agents send logs and events (TCP 1514/1515).
- **WAZUH → SOAR**: alerts are forwarded via webhook.
- **SOAR → external services**: enrichment via VirusTotal and AbuseIPDB, tickets in Jira, notifications in Telegram (through a temporary NAT adapter).
