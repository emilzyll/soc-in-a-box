#05 — Second detection T1110 brute force — 2026-10-07
Done: ran Atomic T1110.001 test 1 (net use with wrong passwords) on WS01; default Wazuh rule for 4625: 60122, level 5; wrote custom rule 100120 (level 10, frequency 4 in 60 seconds, if_matched_sid 60122, MITRE T1110); alert fired on WS01; cleanup done; coverage-plan status detected

