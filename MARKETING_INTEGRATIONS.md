# Marketing Integrations Guide

speekzone is now connected to multiple free platforms to drive subscriber growth and engagement.

## ✅ Currently Active

### 1. **ManyChat Automation** (READY)
- **Status**: ⚠️ Needs API key
- **Setup**: Add `MANYCHAT_API_KEY` to your secrets
- **Features**:
  - Auto-add new users to ManyChat subscriber list
  - Send welcome messages via Messenger/WhatsApp/SMS
  - Tag subscribers based on activity (new user, active, VIP)
  - Send engagement notifications (followers, likes, comments)
  - Broadcast announcements to all subscribers
- **Channels**: Facebook Messenger, Instagram DMs, WhatsApp, SMS
- **Get API Key**: ManyChat Settings > API > Generate API Key
- **Use Cases**:
  - Welcome new users with automated message sequence
  - Send daily/weekly engagement updates
  - Notify users of new followers or post interactions
  - Announce new features or app updates
  - Re-engage inactive users

### 2. **Google Sheets Analytics** (ACTIVE)
- **Status**: ✅ Live and syncing
- **Dashboard URL**: https://docs.google.com/spreadsheets/d/1PzUMmDMPnnhNeqpzv03hiwbAmv4Ya6jjmfo2LYb6dUg
- **Features**:
  - Auto-sync new user signups
  - Track post engagement (likes, comments)
  - Daily stats summary (runs at midnight)
- **Sheets**:
  - `Users` - All user signups with follower/post counts
  - `Engagement` - High-performing posts and interactions
  - `Daily Stats` - Daily summary of growth metrics

### 3. **SendGrid Email Automation** (READY)
- **Status**: ⚠️ Needs API key
- **Setup**: Add `SENDGRID_API_KEY` to your secrets
- **Features**:
  - Welcome emails for new users
  - Weekly digest emails with user stats
  - Follower notification emails
- **Get API Key**: https://sendgrid.com/free (100 emails/day free forever)

### 4. **RSS Feed** (ACTIVE)
- **Status**: ✅ Live
- **Feed URL**: `https://your-app.replit.dev/feed.xml`
- **Features**:
  - Latest 50 posts in RSS format
  - Syndicate content to feed readers
  - Auto-updates with new posts

## 🔧 Ready to Configure

### 5. **Discord Webhooks**
Add webhook URL to send community notifications:
```javascript
import { sendDiscordNotification } from './server/utils/marketingIntegrations';

// Example: Notify on new user signup
sendDiscordNotification(process.env.DISCORD_WEBHOOK, '🎉 New user joined speekzone!');
```
**Get Webhook**: Server Settings > Integrations > Webhooks

### 6. **Telegram Bot**
Send updates to Telegram channel:
```javascript
import { sendTelegramMessage } from './server/utils/marketingIntegrations';

sendTelegramMessage(
  process.env.TELEGRAM_BOT_TOKEN,
  process.env.TELEGRAM_CHAT_ID,
  '📱 New post on speekzone!'
);
```
**Setup**: 
1. Create bot with @BotFather on Telegram
2. Get bot token
3. Add bot to your channel
4. Get chat ID

### 7. **Mailchimp Newsletter**
Export subscribers to Mailchimp for email campaigns:
```javascript
import { syncToMailchimp } from './server/utils/marketingIntegrations';

await syncToMailchimp(
  process.env.MAILCHIMP_API_KEY,
  process.env.MAILCHIMP_AUDIENCE_ID,
  subscribers
);
```
**Free Plan**: Up to 500 subscribers, 1,000 emails/month

### 8. **Google Analytics**
Track website traffic and user behavior:
1. Get tracking ID from https://analytics.google.com
2. Add to frontend (see code below)

```typescript
// Add to client/src/App.tsx
useEffect(() => {
  if (window.gtag) {
    window.gtag('config', 'G-XXXXXXXXXX');
  }
}, []);
```

### 9. **Twitter/X Integration** (Coming Soon)
Post updates to Twitter automatically.
**Requires**: Twitter Developer Account + API credentials

### 10. **Instagram Integration** (Coming Soon)
Share posts to Instagram via Graph API.
**Requires**: Instagram Business Account + Facebook App

## 📊 Analytics Dashboard Access

Your Google Sheets dashboard is accessible at:
**https://docs.google.com/spreadsheets/d/1PzUMmDMPnnhNeqpzv03hiwbAmv4Ya6jjmfo2LYb6dUg**

Or retrieve it anytime via API:
```bash
GET /api/analytics/dashboard
```

## 🚀 Growth Features

### Automatic User Tracking
Every new signup is automatically:
- ✅ Logged to Google Sheets with follower/post counts
- ✅ Sent a welcome email (when SendGrid is configured)
- ✅ Available in RSS feed

### Post Engagement Tracking
Every new post is automatically:
- ✅ Synced to Google Sheets with engagement metrics
- ✅ Added to RSS feed for syndication
- 📊 Tracked for weekly digest emails

### Daily Reports
Every day at midnight:
- ✅ Daily stats compiled (new users, posts, engagement)
- ✅ Written to "Daily Stats" sheet in dashboard
- 📈 Available for trend analysis

## 🔐 Required Secrets

Add these to Replit Secrets as needed:

| Secret Name | Required For | Get It From |
|-------------|--------------|-------------|
| `MANYCHAT_API_KEY` | Messenger/WhatsApp/SMS automation | ManyChat Settings > API |
| `SENDGRID_API_KEY` | Email automation | https://sendgrid.com/free |
| `DISCORD_WEBHOOK` | Discord notifications | Discord Server Settings |
| `TELEGRAM_BOT_TOKEN` | Telegram messages | @BotFather on Telegram |
| `TELEGRAM_CHAT_ID` | Telegram channel | Your channel ID |
| `MAILCHIMP_API_KEY` | Newsletter sync | Mailchimp Account Settings |
| `MAILCHIMP_AUDIENCE_ID` | Subscriber list | Mailchimp Audience |
| `GOOGLE_ANALYTICS_ID` | Web analytics | Google Analytics |

## 📈 Growth Strategy

1. **Week 1**: Set up ManyChat for instant subscriber engagement via Messenger/WhatsApp
2. **Week 2**: Configure SendGrid for welcome emails and weekly digests
3. **Week 3**: Add Discord/Telegram for community updates
4. **Week 4**: Set up Mailchimp for newsletter campaigns
5. **Ongoing**: Monitor Google Sheets dashboard for trends and optimize messaging

## 🎯 Next Steps

To maximize subscriber growth:

1. **Configure ManyChat** - Instant engagement via Messenger/WhatsApp/SMS (highest conversion)
2. **Set up SendGrid** - Welcome emails boost retention
3. **Share RSS Feed** - Submit to feed directories
4. **Launch Discord** - Build community around speekzone
5. **Add Google Analytics** - Track user behavior
6. **Start Newsletter** - Weekly updates via Mailchimp

### Why ManyChat First?
- **80% open rates** vs 20% for email
- **Instant delivery** to Messenger/WhatsApp
- **Two-way conversations** with subscribers
- **Higher engagement** with chat-based messaging

---

**Questions?** All integrations are in `server/utils/` directory:
- `manychat.ts` - ManyChat automation (Messenger/WhatsApp/SMS)
- `analytics.ts` - Google Sheets sync
- `emailCampaigns.ts` - SendGrid templates
- `marketingIntegrations.ts` - Discord, Telegram, RSS, etc.

## 💬 ManyChat Quick Start

### 1. Get Your API Key
1. Log into ManyChat
2. Go to Settings > API
3. Click "Generate API Key"
4. Copy the key

### 2. Add to Replit
1. Open Secrets (lock icon in sidebar)
2. Add key: `MANYCHAT_API_KEY`
3. Paste your API key as value
4. Restart your app

### 3. What Happens Automatically
- ✅ New users added to ManyChat subscriber list
- ✅ Welcome message sent via Messenger/WhatsApp
- ✅ Tagged as "New User" for segmentation
- ✅ Ready for automated flows and broadcasts

### 4. Create Flows in ManyChat
- **Welcome sequence**: 3-5 messages introducing speekzone
- **Daily digest**: Send top posts each morning
- **Engagement alerts**: Notify users of new followers/likes
- **Re-engagement**: Message inactive users after 7 days

### 5. Advanced Features
```javascript
import { sendManyChatMessage, tagManyChatSubscriber } from './server/utils/manychat';

// Send custom message
await sendManyChatMessage(apiKey, subscriberId, '🎉 You got a new follower!');

// Tag users for segmentation
await tagManyChatSubscriber(apiKey, subscriberId, tagId);
```
