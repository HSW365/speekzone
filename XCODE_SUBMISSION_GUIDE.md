# speekzone - Complete Xcode Submission Guide

## 📥 **Step 1: Download the App**

**Download Link:** https://541056a5-7aca-4ee9-b7b8-8ae3c2ea97b6-00-9pgzykoowb29.kirk.replit.dev/api/download/ios-app

---

## 💻 **Step 2: Setup on Mac**

### Extract and Install Dependencies
```bash
cd ~/Downloads
tar -xzf speekzone-ios-app.tar.gz
cd speekzone-ios-app
npm install
```

### Build the App
```bash
npm run build
npx cap sync ios
```

### Update Your Apple Team ID
```bash
# Open this file in any text editor:
open ios/App/ExportOptions.plist

# Replace YOUR_TEAM_ID_HERE with your actual Team ID
# Find your Team ID at: https://developer.apple.com/account/#/membership/
```

---

## 🔧 **Step 3: Open in Xcode**

```bash
cd ios/App
open App.xcworkspace
```

⚠️ **Important:** Open `App.xcworkspace` (NOT `App.xcodeproj`)

---

## ✅ **Step 4: Configure Signing in Xcode**

### 4.1 Select Project
- [ ] Click "App" (blue icon) in left sidebar
- [ ] Under TARGETS, select "App"
- [ ] Click "Signing & Capabilities" tab

### 4.2 Setup Signing
- [ ] Uncheck "Automatically manage signing"
- [ ] Select your **Team** from dropdown
- [ ] Under **Provisioning Profile**, select your **App Store** profile

**Don't have a provisioning profile?**
1. Go to: https://developer.apple.com/account/resources/profiles/add
2. Create "App Store" profile
3. Use Bundle ID: `com.speekzone.app`

---

## 🎯 **Step 5: Build Settings**

### 5.1 Set Target Device
- [ ] At top of Xcode, click device selector (next to Play button)
- [ ] Select **"Any iOS Device (arm64)"**
- [ ] Do NOT select simulator or specific device

### 5.2 Verify Settings
- [ ] Bundle Identifier: `com.speekzone.app`
- [ ] Version: 1.0
- [ ] Build: 1
- [ ] Deployment Target: iOS 14.0+

---

## 📦 **Step 6: Archive the App**

### 6.1 Create Archive
- [ ] Menu bar → **Product** → **Archive**
- [ ] Wait 2-5 minutes for build
- [ ] Organizer window opens automatically

### 6.2 If Archive Button is Grayed Out
```bash
# Run this in terminal and try again:
npx cap sync ios
```
Then restart Xcode and select "Any iOS Device" again

---

## 🚀 **Step 7: Upload to App Store**

### In Organizer Window:
1. - [ ] Select your archive (top of list)
2. - [ ] Click **"Distribute App"** (blue button on right)
3. - [ ] Select **"App Store Connect"** → **Next**
4. - [ ] Select **"Upload"** → **Next**
5. - [ ] Keep default options → **Next**
6. - [ ] Review signing → **Next**
7. - [ ] Click **"Upload"**

---

## ⏳ **Step 8: Wait for Processing**

### 8.1 Open App Store Connect
- [ ] Go to: https://appstoreconnect.apple.com
- [ ] Click **"My Apps"**
- [ ] Click **"+ "** to create new app (if first time)
- [ ] Or select **"speekzone"** if it exists

### 8.2 Create App Listing (if needed)
- [ ] Name: `speekzone`
- [ ] Bundle ID: Select `com.speekzone.app`
- [ ] SKU: `speekzone-001`
- [ ] Primary Language: English

### 8.3 Wait for Build Processing
- [ ] Check "Activity" tab
- [ ] Wait for "Processing" → "Ready to Submit"
- [ ] Usually takes 10-60 minutes

---

## 📝 **Step 9: Complete App Information**

### 9.1 App Information Tab
- [ ] **Name:** speekzone
- [ ] **Subtitle:** Global Social Platform
- [ ] **Category:** Social Networking
- [ ] **Age Rating:** Complete questionnaire (probably 17+)

### 9.2 Pricing and Availability
- [ ] **Price:** Free
- [ ] **Availability:** All countries (or select specific)

### 9.3 App Privacy
- [ ] Click **"Get Started"**
- [ ] Data Types Collected:
  - [ ] Contact Info (email)
  - [ ] User Content (posts, photos, videos)
  - [ ] Identifiers (user ID)
- [ ] Purpose: App Functionality
- [ ] Not used for tracking

### 9.4 App Description
```
speekzone - where every voice matters.

True chronological feeds with no algorithmic manipulation. Connect with diverse voices from around the world through global and regional feeds.

FEATURES:
• Chronological timeline - see posts in real order
• Global & regional feeds - connect locally and worldwide
• Live streaming - 30-minute sessions
• Direct messaging with photo/video sharing
• User profiles with QR codes
• Featured creator: HOODSTAR365

No algorithms. No hidden posts. Just authentic expression.

Join the global conversation on speekzone.
```

### 9.5 Keywords
```
social media, chronological feed, live streaming, global community, regional feeds, direct messaging, social network, authentic, free expression
```

### 9.6 Support URL
- [ ] Add your website or support page URL

### 9.7 Privacy Policy URL (Required)
- [ ] Add privacy policy URL
- [ ] Create one if needed (many templates online)

---

## 📸 **Step 10: Screenshots**

### Required Sizes:
- [ ] **6.5" Display** (iPhone 14 Pro Max): 3-10 screenshots

### How to Take Screenshots:
1. Run app in simulator: iPhone 14 Pro Max
2. Navigate to key screens:
   - [ ] Home/Timeline feed
   - [ ] Global feed
   - [ ] User profile
   - [ ] Live streaming page
   - [ ] Direct messaging
3. Take screenshots: `Cmd + S` in simulator
4. Upload to App Store Connect

**Recommended Screenshots:**
1. Timeline with HOODSTAR365 post
2. Global feed showing multiple posts
3. User profile page
4. Live streaming interface
5. Direct messaging interface

---

## 🎬 **Step 11: App Preview Video (Optional)**

- [ ] 30-second video showing app features
- [ ] Same size as screenshots (6.5" display)
- [ ] Upload to App Store Connect

---

## ✉️ **Step 12: App Review Information**

### 12.1 Contact Information
- [ ] First Name
- [ ] Last Name
- [ ] Phone Number
- [ ] Email Address

### 12.2 Demo Account (Important!)
- [ ] Username: (create test account)
- [ ] Password: (provide password)
- [ ] Notes: "Test account for app review. All features enabled."

**Why needed:** Reviewers need to test your app

### 12.3 Notes for Reviewer
```
speekzone is a social media platform with chronological feeds (no algorithms).

Key features to test:
1. User authentication (use demo account provided)
2. Create a post with text/photo
3. View global and regional feeds
4. Live streaming (30-minute limit enforced)
5. Direct messaging between users

Featured creator HOODSTAR365 will appear in feeds.

All privacy permissions are clearly described to users.
```

---

## 🔒 **Step 13: Export Compliance**

### Encryption Questions:
- [ ] **Does your app use encryption?** → **No**
- [ ] **Does your app contain, display, or access third-party encryption?** → **No**

(speekzone uses standard HTTPS, which is exempt)

---

## ✅ **Step 14: Submit for Review**

### Final Checklist:
- [ ] App Information complete
- [ ] Screenshots uploaded (at least 3)
- [ ] Description and keywords added
- [ ] Privacy policy URL added
- [ ] Support URL added
- [ ] Demo account provided
- [ ] Build selected under "Build" section
- [ ] Age rating completed
- [ ] Export compliance answered

### Submit:
1. - [ ] Click **"Add for Review"** (top right)
2. - [ ] Review all information
3. - [ ] Click **"Submit to App Review"**

---

## ⏰ **Timeline**

| Step | Time |
|------|------|
| Upload build | 2-10 minutes |
| Processing | 10-60 minutes |
| In Review | 24-48 hours |
| If Approved | Live immediately |

---

## ❗ **Common Issues & Solutions**

### "No signing identity found"
**Solution:** Create App Store Distribution certificate
→ https://developer.apple.com/account/resources/certificates/add

### "No provisioning profile found"
**Solution:** Create App Store provisioning profile
→ https://developer.apple.com/account/resources/profiles/add
→ Bundle ID: `com.speekzone.app`

### Archive button grayed out
**Solution:** Select "Any iOS Device (arm64)" at top of Xcode

### Build fails
**Solution:** 
```bash
npx cap sync ios
npx cap update ios
```
Then clean build: `Cmd + Shift + K` in Xcode

### "Codesign failed"
**Solution:** Check signing certificate is valid and not expired

---

## 📱 **After Approval**

### Your app will be available at:
```
https://apps.apple.com/app/speekzone/[APP_ID]
```

### Next Steps:
- [ ] Share App Store link on social media
- [ ] Add "Download on App Store" badge to website
- [ ] Announce launch to your community
- [ ] Monitor reviews and ratings

---

## 📞 **Need Help?**

- **Apple Developer Support:** https://developer.apple.com/support/
- **App Review Guidelines:** https://developer.apple.com/app-store/review/guidelines/
- **App Store Connect Help:** https://help.apple.com/app-store-connect/

---

## 🎉 **You're Ready!**

Bundle ID: `com.speekzone.app`  
App Name: `speekzone`  
Category: Social Networking  
Version: 1.0  

Everything is configured. Just follow this checklist step by step!
