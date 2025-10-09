# speekzone - Apple App Store Submission Checklist

## ✅ Pre-Submission Requirements

### 1. App Information
- [x] Bundle ID: `com.speekzone.app`
- [x] App Name: `speekzone` (lowercase branding)
- [x] Version: 1.0
- [x] Build Number: 1
- [x] Category: Social Networking
- [ ] Age Rating: Determine appropriate rating
- [ ] Keywords: Add relevant keywords for App Store search

### 2. Privacy & Permissions ✓
Essential permissions configured in `Info.plist`:
- [x] Camera Access - Live streaming and photo capture
- [x] Microphone Access - Live streaming and voice messages
- [x] Photo Library Access - Viewing and selecting photos
- [x] Photo Library Add - Saving photos/videos
- [x] Location When In Use - Regional feeds (optional)

**Note**: Removed NSFaceIDUsageDescription and NSUserTrackingUsageDescription to avoid unnecessary permission prompts and potential App Review issues. Add these only if you implement Face ID authentication or IDFA tracking.

### 3. Technical Requirements ✓
- [x] Capacitor configured (`capacitor.config.ts`)
- [x] CocoaPods ready (`Podfile`)
- [x] App icons at all sizes (`AppIcon.appiconset`)
- [x] Launch screen configured
- [x] Export options prepared (`ExportOptions.plist`)
  - **ACTION REQUIRED**: Replace `YOUR_TEAM_ID_HERE` with your Apple Developer Team ID
  - **ACTION REQUIRED**: Replace provisioning profile name with your actual App Store profile name
- [x] Entitlements configured (`App.entitlements`) - Simplified to keychain access only
- [x] iOS 14.0+ deployment target

### 4. Features Implemented ✓
- [x] User authentication (Replit Auth)
- [x] Post creation with media
- [x] Direct messaging with media sharing
- [x] Live streaming (30-minute limit)
- [x] Real-time WebSocket communication
- [x] Chronological feeds (Timeline, Global, Regional)
- [x] User profiles with QR codes
- [x] Dark mode support
- [x] PWA capabilities
- [x] Offline support

### 5. Build & Archive Steps

#### Using build-ios.sh (Automated)
```bash
./build-ios.sh
```

#### Manual Build Process
1. **Prepare the build:**
   ```bash
   npm install
   npm run build
   npx cap sync ios
   npx cap update ios
   ```

2. **Open in Xcode:**
   ```bash
   cd ios/App
   open App.xcworkspace
   ```

3. **Configure signing (CRITICAL):**
   - In Xcode, select your development team
   - Verify bundle identifier: `com.speekzone.app`
   - **BEFORE ARCHIVING**: Edit `ios/App/ExportOptions.plist`
     - Replace `YOUR_TEAM_ID_HERE` with your Apple Team ID (find at https://developer.apple.com/account/#/membership/)
     - Replace `MATCH_YOUR_ACTUAL_PROVISIONING_PROFILE_NAME` with your App Store provisioning profile name
   - Alternatively, use Xcode's automatic signing in Organizer after archiving

4. **Archive the app:**
   - In Xcode: Product → Archive
   - Wait for archive to complete

5. **Distribute to App Store:**
   - Window → Organizer
   - Select the archive
   - Click "Distribute App"
   - Choose "App Store Connect"
   - Follow the prompts

### 6. App Store Connect Setup

#### App Information
- **App Name:** speekzone
- **Subtitle:** Unite Diverse Voices Worldwide
- **Privacy Policy URL:** [Required - add your URL]
- **Category:** Social Networking
- **Content Rights:** Confirm you own the rights

#### Description (Example)
```
speekzone - where authentic voices unite

Connect with diverse communities worldwide through:

• Live Streaming - Go live for up to 30 minutes
• Chronological Feeds - No algorithms, just real-time content
• Global & Regional Discovery - Connect locally or worldwide
• Direct Messaging - Share photos, videos with mutual followers
• Voice Calls - Real-time communication
• QR Code Sharing - Easy profile connections

speekzone prioritizes free expression and authentic communication without algorithmic manipulation. Your timeline shows posts exactly as they happen.

Features:
✓ Live video streaming
✓ Photo & video sharing
✓ Real-time messaging
✓ Regional communities
✓ Dark mode
✓ Offline support
```

#### Screenshots Required
Prepare screenshots for:
- iPhone 6.7" (iPhone 14 Pro Max)
- iPhone 6.5" (iPhone 11 Pro Max)
- iPhone 5.5" (iPhone 8 Plus)
- iPad Pro 12.9"
- iPad Pro 11"

Screenshot suggestions:
1. Live streaming interface
2. Global feed with posts
3. Direct messaging
4. User profile with QR code
5. Create post interface

### 7. Testing Requirements

Before submission, test:
- [ ] Camera permissions work
- [ ] Microphone permissions work
- [ ] Live streaming starts/stops correctly
- [ ] 30-minute stream auto-termination works
- [ ] Photo upload from camera
- [ ] Photo selection from library
- [ ] Direct messaging sends/receives
- [ ] Real-time updates work
- [ ] QR code generation works
- [ ] Regional feed filters correctly
- [ ] Dark mode displays properly
- [ ] Authentication flow works
- [ ] All deeplinks open correctly

### 8. App Review Information

Prepare for App Review:
- [ ] Demo account credentials (if login required)
- [ ] Testing instructions for reviewers
- [ ] Explanation of live streaming features
- [ ] Privacy policy explaining data usage
- [ ] Contact information for questions

### 9. Post-Submission

After submission:
- Monitor App Store Connect for status updates
- Respond to App Review questions within 24 hours
- Prepare for potential rejection and resubmission
- Plan for post-launch bug fixes

### 10. Common Rejection Reasons to Avoid

- ❌ Missing privacy policy
- ❌ Incomplete testing instructions
- ❌ Permissions without clear explanations
- ❌ Crashing on launch
- ❌ Missing required features
- ❌ Inappropriate content
- ❌ Metadata not matching app functionality

## Build Commands Reference

```bash
# Full rebuild
npm run build && npx cap sync ios

# Update iOS platform only
npx cap update ios

# Open in Xcode
cd ios/App && open App.xcworkspace

# CocoaPods install (if needed on Mac)
cd ios/App && pod install
```

## Support & Resources

- **Capacitor Docs:** https://capacitorjs.com/docs/ios
- **App Store Review Guidelines:** https://developer.apple.com/app-store/review/guidelines/
- **Human Interface Guidelines:** https://developer.apple.com/design/human-interface-guidelines/

---

**Ready for App Store submission!** All technical requirements are configured. Complete the App Store Connect setup and testing before submitting.
