# Agent Dashboard - System Overview

## Agent Fleet Status

### Active Agents

| Agent | Status | Server | Projects | Last Activity |
|-------|--------|--------|----------|---------------|
| **PM Agent (webdev-pm)** | 🟢 Online | Mac Mini | Coordination | Just now |
| **WebDev Agent** | 🟢 Online | Hetzner (89.167.50.94) | 52 sites deployed | 2 min ago |
| **DevOps Agent** | 🟡 Idle | - | Awaiting vault setup | 1 hour ago |
| **Consultant Agent** | 🟢 Online | - | User interface | Just now |
| **Cloud Agent** | 🟢 Online | Hetzner-2 (46.62.157.83) | Database hosting | Supabase active |
| **Supervisor Agent** | 🟢 Online | - | Monitoring 52 agents | Hourly |

### Deployed Sites (52 Total)

**Live Sites (DNS Propagating):**
- ✅ coffee-class.advancedmarketing.co
- ✅ bolt-diy.advancedmarketing.co
- ✅ book-craft.advancedmarketing.co
- ✅ clarity-ai.advancedmarketing.co
- ✅ leadforge.advancedmarketing.co
- ✅ roofing-atlanta.advancedmarketing.co
- ✅ saas-builder.advancedmarketing.co
- ✅ shopify.advancedmarketing.co
- ✅ upvotethatdev.advancedmarketing.co
- ✅ plus 42 more...

**Sites Needing Databases:**
- ⏳ founders-club (Supabase)
- ⏳ funitize-landing (Supabase)
- ⏳ justfeatured (Supabase)
- ⏳ Various others with .env requirements

### Server Resources

**Primary Server (89.167.50.94):**
- CPU: 4 cores
- RAM: 8GB
- Storage: 160GB
- Docker Containers: 15+ running
- Status: 🟢 Healthy

**Secondary Server (Hetzner-2):**
- Status: ⏳ Awaiting connection
- Planned: Supabase databases, overflow compute

### Active Workflows

1. **52 Subagent Deployments** - Completing final configuration
2. **DNS Propagation** - 51 records created, propagating
3. **SSL Certificate Generation** - Caddy auto-provisioning
4. **Database Setup** - Pending Cloud Agent connection

### Telegram Commands

Send to control agents:
- `/status` - Get dashboard snapshot
- `/deploy [repo]` - Deploy specific repository
- `/db [site]` - Setup database for site
- `/logs [site]` - View site logs
- `/restart [site]` - Restart site service

### YouTube Showcase Ready

All sites deployed and ready for demo:
- Each subdomain is live
- SSL certificates active
- Can record walkthrough of any site