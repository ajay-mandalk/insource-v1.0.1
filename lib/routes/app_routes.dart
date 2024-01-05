import 'package:flutter/material.dart';
import 'package:insource/presentation/flash_screen/flash_screen.dart';
import 'package:insource/presentation/login_screen/login_screen.dart';
import 'package:insource/presentation/signup_screen/signup_screen.dart';
import 'package:insource/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:insource/presentation/home_screen/home_screen.dart';
import 'package:insource/presentation/room_screen/room_screen.dart';
import 'package:insource/presentation/connecting_screen/connecting_screen.dart';
import 'package:insource/presentation/coin_selection_screen/coin_selection_screen.dart';
import 'package:insource/presentation/gaming_screen/gaming_screen.dart';
import 'package:insource/presentation/leaderboard_screen/leaderboard_screen.dart';
import 'package:insource/presentation/contest_detail_screen/contest_detail_screen.dart';
import 'package:insource/presentation/coin_selection_one_screen/coin_selection_one_screen.dart';
import 'package:insource/presentation/contest_room_screen/contest_room_screen.dart';
import 'package:insource/presentation/gaming_screen_one_screen/gaming_screen_one_screen.dart';
import 'package:insource/presentation/winner_screen/winner_screen.dart';
import 'package:insource/presentation/your_match_three_tab_container_screen/your_match_three_tab_container_screen.dart';
import 'package:insource/presentation/market_screen/market_screen.dart';
import 'package:insource/presentation/profile_screen/profile_screen.dart';
import 'package:insource/presentation/setting_screen/setting_screen.dart';
import 'package:insource/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:insource/presentation/kyc_screen/kyc_screen.dart';
import 'package:insource/presentation/kyctwo_screen/kyctwo_screen.dart';
import 'package:insource/presentation/invite_to_earn_screen/invite_to_earn_screen.dart';
import 'package:insource/presentation/share_invite_screen/share_invite_screen.dart';
import 'package:insource/presentation/no_result_screen/no_result_screen.dart';
import 'package:insource/presentation/no_internet_screen/no_internet_screen.dart';
import 'package:insource/presentation/went_wrong_screen/went_wrong_screen.dart';
import 'package:insource/presentation/comming_soon_screen/comming_soon_screen.dart';
import 'package:insource/presentation/loading_screen/loading_screen.dart';
import 'package:insource/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String flashScreen = '/flash_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String homeScreen = '/home_screen';

  static const String roomScreen = '/room_screen';

  static const String connectingScreen = '/connecting_screen';

  static const String coinSelectionScreen = '/coin_selection_screen';

  static const String gamingScreen = '/gaming_screen';

  static const String leaderboardScreen = '/leaderboard_screen';

  static const String contestDetailScreen = '/contest_detail_screen';

  static const String coinSelectionOneScreen = '/coin_selection_one_screen';

  static const String contestRoomScreen = '/contest_room_screen';

  static const String gamingScreenOneScreen = '/gaming_screen_one_screen';

  static const String winnerScreen = '/winner_screen';

  static const String livePage = '/live_page';

  static const String upcomingPage = '/upcoming_page';

  static const String completedPage = '/completed_page';

  static const String yourMatchtwoPage = '/your_matchtwo_page';

  static const String yourMatchThreePage = '/your_match_three_page';

  static const String yourMatchThreeTabContainerScreen =
      '/your_match_three_tab_container_screen';

  static const String yourMatchPage = '/your_match_page';

  static const String marketScreen = '/market_screen';

  static const String profileScreen = '/profile_screen';

  static const String settingScreen = '/setting_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String kycScreen = '/kyc_screen';

  static const String kyctwoScreen = '/kyctwo_screen';

  static const String inviteToEarnScreen = '/invite_to_earn_screen';

  static const String shareInviteScreen = '/share_invite_screen';

  static const String noResultScreen = '/no_result_screen';

  static const String noInternetScreen = '/no_internet_screen';

  static const String wentWrongScreen = '/went_wrong_screen';

  static const String commingSoonScreen = '/comming_soon_screen';

  static const String loadingScreen = '/loading_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    flashScreen: (context) => FlashScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    homeScreen: (context) => HomeScreen(),
    roomScreen: (context) => RoomScreen(),
    connectingScreen: (context) => ConnectingScreen(),
    coinSelectionScreen: (context) => CoinSelectionScreen(),
    gamingScreen: (context) => GamingScreen(),
    leaderboardScreen: (context) => LeaderboardScreen(),
    contestDetailScreen: (context) => ContestDetailScreen(),
    coinSelectionOneScreen: (context) => CoinSelectionOneScreen(),
    contestRoomScreen: (context) => ContestRoomScreen(),
    gamingScreenOneScreen: (context) => GamingScreenOneScreen(),
    winnerScreen: (context) => WinnerScreen(),
    yourMatchThreeTabContainerScreen: (context) =>
        YourMatchThreeTabContainerScreen(),
    marketScreen: (context) => MarketScreen(),
    profileScreen: (context) => ProfileScreen(),
    settingScreen: (context) => SettingScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    kycScreen: (context) => KycScreen(),
    kyctwoScreen: (context) => KyctwoScreen(),
    inviteToEarnScreen: (context) => InviteToEarnScreen(),
    shareInviteScreen: (context) => ShareInviteScreen(),
    noResultScreen: (context) => NoResultScreen(),
    noInternetScreen: (context) => NoInternetScreen(),
    wentWrongScreen: (context) => WentWrongScreen(),
    commingSoonScreen: (context) => CommingSoonScreen(),
    loadingScreen: (context) => LoadingScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => FlashScreen(),
  };
}
