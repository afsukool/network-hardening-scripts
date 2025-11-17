# Block all inbound, allow specific ports
Set-NetFirewallProfile -Profile Domain,Public,Private -DefaultInboundAction Block

# Allow RDP
New-NetFirewallRule -DisplayName "Allow RDP" -Direction Inbound -Protocol TCP -LocalPort 3389 -Action Allow

# Allow Web Traffic
New-NetFirewallRule -DisplayName "Allow HTTP" -Direction Inbound -Protocol TCP -LocalPort 80 -Action Allow
