#!/bin/bash
# Telegram Bot Command Handler
# Processes commands from Telegram to control agents

COMMAND="$1"
ARG="$2"

case "$COMMAND" in
    "status")
        /Users/benji/.openclaw/workspace/agents/dashboard/show-dashboard.sh
        ;;
    "deploy")
        if [ -z "$ARG" ]; then
            echo "Usage: /deploy [site-name]"
            echo "Example: /deploy coffee-class"
        else
            echo "🚀 Deploying $ARG..."
            ssh -i /Users/benji/.openclaw/workspace/agents/webdev/config/id_ed25519 root@89.167.50.94 "cd /opt/github-repos/$ARG && docker compose up -d 2>&1 || pm2 restart $ARG 2>&1 || echo 'No deployment method found'"
        fi
        ;;
    "db")
        if [ -z "$ARG" ]; then
            echo "Usage: /db [site-name]"
            echo "Creates Supabase database for site"
        else
            echo "🗄️  Setting up database for $ARG..."
            echo "Status: Cloud Agent not yet connected"
            echo "Action: Provide Hetzner-2 server IP to proceed"
        fi
        ;;
    "logs")
        if [ -z "$ARG" ]; then
            echo "Usage: /logs [site-name]"
        else
            echo "📜 Logs for $ARG:"
            ssh -i /Users/benji/.openclaw/workspace/agents/webdev/config/id_ed25519 root@89.167.50.94 "docker logs $ARG 2>&1 | tail -20 || pm2 logs $ARG --lines 20 2>&1 || echo 'No logs found'"
        fi
        ;;
    "restart")
        if [ -z "$ARG" ]; then
            echo "Usage: /restart [site-name]"
        else
            echo "🔄 Restarting $ARG..."
            ssh -i /Users/benji/.openclaw/workspace/agents/webdev/config/id_ed25519 root@89.167.50.94 "docker restart $ARG 2>&1 || pm2 restart $ARG 2>&1 || echo 'Service not found'"
        fi
        ;;
    "list")
        echo "📋 Deployed Sites:"
        ssh -i /Users/benji/.openclaw/workspace/agents/webdev/config/id_ed25519 root@89.167.50.94 "ls -1 /opt/github-repos/" 2>/dev/null | head -20
        echo "... and more"
        ;;
    *)
        echo "🤖 Advanced Marketing Agent Bot"
        echo ""
        echo "Commands:"
        echo "  /status          - Show dashboard"
        echo "  /list            - List all sites"
        echo "  /deploy [site]   - Deploy/redeploy site"
        echo "  /db [site]       - Setup database"
        echo "  /logs [site]     - View logs"
        echo "  /restart [site]  - Restart service"
        echo ""
        echo "Example: /deploy coffee-class"
        ;;
esac