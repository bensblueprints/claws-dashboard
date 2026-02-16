#!/bin/bash
# Deploy CLAWS dashboard to Netlify

cd /Users/benji/.openclaw/workspace/agents/dashboard

# Check if netlify is configured
if [ ! -f .netlify/state.json ]; then
    echo "⚠️  Netlify not initialized"
    echo "Run: netlify init" 
    exit 1
fi

# Deploy
echo "🚀 Deploying CLAWS to Netlify..."
netlify deploy --prod --dir=. --site=claws-dashboard 2>&1 | tail -20

echo ""
echo "✅ Deployed!"
echo "URL will be shown above"