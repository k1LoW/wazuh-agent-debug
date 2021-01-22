# wazuh-debug

Wazuh agent binary for "Agent event queue is flooded" debug

## Usage (Ubuntu)

1. Stop wazuh-agent.service ( `systemctl stop wazuh-agent.service` )
2. Replace `/var/ossec/bin/ossec-agentd` to [releases pages binary](https://github.com/k1LoW/wazuh-debug/releases)
3. Add `agent.debug=2` to `/var/ossec/etc/local_internal_options.conf`
4. Start wazuh-agent.service ( `systemctl start wazuh-agent.service` )
5. Check `/var/ossec/logs/ossec.log`
