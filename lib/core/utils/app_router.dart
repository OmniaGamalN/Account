import 'package:edit_profile/features/my_profile/presentation/screens/edit_profile_screen.dart';
import 'package:edit_profile/features/my_profile/presentation/screens/my_account_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kMyAccountScreen = '/myAccountScreen';
  static const kEditProfileScreen = '/editScreen';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyAccountScreen(),
    ),
    GoRoute(
      path: (kEditProfileScreen),
      builder: (context, state) => EditProfile(),
    ),
  ]);
}
