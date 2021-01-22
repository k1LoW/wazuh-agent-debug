# wazuh-debug

Wazuh agent binary for "Agent event queue is flooded" debug

## Usage (Ubuntu)

1. Check wazuh-agent version ( `dpkg -l | grep wazuh-agent` )
2. Stop wazuh-agent.service ( `systemctl stop wazuh-agent.service` )
3. Replace `/var/ossec/bin/ossec-agentd` to [releases pages binary](https://github.com/k1LoW/wazuh-debug/releases)
4. Add `agent.debug=2` to `/var/ossec/etc/local_internal_options.conf`
5. Start wazuh-agent.service ( `systemctl start wazuh-agent.service` )
6. Check `/var/ossec/logs/ossec.log` ( `tail -F /var/ossec/logs/ossec.log | grep 'Send messages to buffer'` )
