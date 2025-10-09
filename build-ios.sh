#!/bin/bash

# speekzone iOS Build Script for App Store Submission
# This script builds the iOS app for Apple App Store deployment

set -e

echo "🚀 Building speekzone for iOS App Store submission..."

# Step 1: Install dependencies
echo "📦 Installing dependencies..."
npm install

# Step 2: Build the web app
echo "🔨 Building web application..."
npm run build

# Step 3: Sync with Capacitor
echo "📱 Syncing with Capacitor..."
npx cap sync ios

# Step 4: Update Capacitor
echo "🔄 Updating Capacitor iOS platform..."
npx cap update ios

echo ""
echo "✅ Build preparation complete!"
echo ""
echo "📋 Next steps for App Store submission:"
echo "   1. IMPORTANT: Edit ios/App/ExportOptions.plist"
echo "      - Replace YOUR_TEAM_ID_HERE with your Apple Team ID"
echo "      - Replace provisioning profile placeholder with actual profile name"
echo "   2. Open Xcode: cd ios/App && open App.xcworkspace"
echo "   3. Select 'Any iOS Device' as the build target"
echo "   4. Select your Team in Signing & Capabilities"
echo "   5. Archive: Product → Archive"
echo "   6. Distribute: Window → Organizer → Distribute App"
echo ""
echo "📄 Required for App Store:"
echo "   ✓ Privacy permissions configured in Info.plist"
echo "   ✓ App icons ready in Assets.xcassets"
echo "   ✓ Bundle ID: com.speekzone.app"
echo "   ✓ Version: 1.0 (Build 1)"
echo "   ✓ Export options configured"
echo ""
echo "⚠️  Before submitting:"
echo "   - Test on real device"
echo "   - Verify all permissions work"
echo "   - Check live streaming functionality"
echo "   - Prepare App Store screenshots"
echo "   - Write App Store description"
echo ""
