import 'package:the_luxury_hut/presentations/screens/welcome_screen/ui/welcome_screen_ui.dart';
import 'package:the_luxury_hut/presentations/widgets/bottom_navigation_bar.dart';
import '../../presentations/screens/account_screen/ui/account_screen_ui.dart';
import '../../presentations/screens/chat_screen/ui/chat_screen_ui.dart';
import '../../presentations/screens/discover_screen/ui/discover_screen_ui.dart';
import '../../presentations/screens/log_in_screen/ui/login_screen_ui.dart';
import '../../presentations/screens/my_watches_screen/ui/my_watches_screen_ui.dart';
import '../../presentations/screens/sell_screen/ui/sell_screen_ui.dart';
import '../../presentations/screens/sign_up_screen/ui/signup_screen_ui.dart';

var routes = {
  '/welcome': (context) => const WelcomeScreen(),
  '/account': (context) => const AccountScreen(),
  '/chat': (context) => const ChatScreen(),
  '/discover': (context) => const DiscoverScreen(),
  '/login': (context) => const LoginScreen(),
  '/watches': (context) => const MyWatchesScreen(),
  '/sell': (context) => const SellScreen(),
  '/signup': (context) => const SignupScreen(),
  '/dashboard': (context) => const CustomBottomNavigationBar(),
};