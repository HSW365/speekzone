import type { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.speekzone.app',
  appName: 'speekzone',
  webDir: 'dist/public',
  server: {
    androidScheme: 'https'
  },
  plugins: {
    SplashScreen: {
      launchShowDuration: 2500,
      backgroundColor: '#2563eb',
      showSpinner: false,
      androidSpinnerStyle: 'large',
      iosSpinnerStyle: 'small',
      spinnerColor: '#ffffff',
      splashFullScreen: true,
      splashImmersive: true,
      iosLaunchAnimationType: 'fade'
    },
    StatusBar: {
      style: 'light',
      backgroundColor: '#2563eb'
    },
    Keyboard: {
      resize: 'ionic',
      style: 'light',
      resizeOnFullScreen: true
    },
    LocalNotifications: {
      smallIcon: 'ic_stat_icon_config_sample',
      iconColor: '#2563eb'
    },
    Camera: {
      iosImageQuality: 85,
      androidImageQuality: 85
    },
    Haptics: {}
  },
  ios: {
    contentInset: 'automatic',
    scrollEnabled: true,
    backgroundColor: '#2563eb',
    allowsLinkPreview: false,
    handleApplicationNotifications: true,
    scheme: 'speekzone'
  }
};

export default config;
