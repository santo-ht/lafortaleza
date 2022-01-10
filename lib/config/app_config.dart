class AppConfig {
  static const google_grant_type = "social";
  static const google_client_id = 3;
  static const google_client_secret =
      "SLF4Tzh81sdryRiIAA8Bdek2QnIbw9OfRLsm5QCR";
  // "fxiPkgmnMBVLDxn9ZTLJ2WKTzkiboWPoAA7Dj3WE";
  static const google_provider = "google";

  static const baseUrl = 'https://qa-api2.truverify.com';

  // App & Play Store Config
  static const shareAppleLink =
      'https://apps.apple.com/in/app/roq-raw-radio/id1540426253';
  static const shareAndroidLink =
      'https://play.google.com/store/apps/details?id=com.ht.roqRawRadio';

  static const androidAppId = 'com.ht.roqRawRadio';
  static const iOSAppId = 'com.ht.roqRawRadio';

  /* Provider API URL's */

  // Auth
  static const login = '/auth/login';
  static const logout = '/auth/logout';
  static const signup = '/auth/signup';
  static const changePassword = '/auth/change_password';
  static const resetPassword = '/auth/reset_password';
  static const forgotPassword = '/auth/forgot_password';

  // Profile
  static const profileUrl = '/professional/getProfileDetails';
  static const updateProfileUrl = '/professional/updateProfile';
  static const updateProfilePic = '/professional/uploadProfilePic';

  static const getActivityLogs = '/professional/getActivityLogs';

  // Documents
  static const listDocuments = '/professional/listDocuments';
  static const uploadSecureDocument = '/professional/uploadSecureDocument';
  static const shareDocument = '/professional/shareDocument';
  static const getDocument = '/professional/getDocument';

  // Questionnaire
  static const getprofileQuestionnaire =
      '/professional/getProfileQuestionnaire';
  static const submitProfileQuestionnaire =
      '/professional/submitProfileQuestionnaire';

  // Subscription
  static const getSubscriptionPlans = '/packages/getSubscriptionPlans';
  static const updateProfileSubscription =
      '/professional/updateProfileSubscription';
  static const getProfileSubscription = '/professional/getProfileSubscription';

  /* Provider API URL's */

  /* Config Colors */

  static const appBgColor = 0xFFff0a72;
  static const blueColorHex = '#05062d';
  static const blueColor = 0xFF05062d;
  static const gradientLightBlueColor = 0xFF18193d;
  static const blueBorderColor = 0xFF88A0B5;
  static const greenColor = 0xFF42B97F;
  //0xFF2b7561; //0xFF42b97f;
  static const lightGrey = 0xFFD8D8D8;
  static const grey = 0xFFe7e7eb;
  static const bottomNavBGColor = 0xFffffff;
  //0xFF2b2c4d;
  static const bottomNavSelectColor = 0xFFff0a72;
  //0xFF42b97f;
  static const homeSubscriptionColor = 0xFF7D7FBB;
  static const homeHistoryColor = 0xFF9B9CAB;

  /* Config Colors */

  /* Config Assets */
  static const defaultImage = 'assets/images/default.jpg';
  static const logoImage = 'assets/images/app_logo.png';
  static const splashImage = 'assets/images/splash.png';
  static const posterImage = 'assets/images/lafortaleza_poster.png';
  static const orderConfirmImage = 'assets/images/confirm.png';
}
