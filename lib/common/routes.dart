import 'package:codeland/view/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../view/screens/dashboard_screen.dart';

class AppRouter {
  static const loginScreen = '/loginScreen';
  static const dashboardScreen = '/dashboardScreen';

  static Map<String, WidgetBuilder> get setUpRoutes {
    return {
      dashboardScreen: (BuildContext context) => const DashBoardScreen(),
      loginScreen: (BuildContext context) => const LoginScreen()
    };
  }

  /// Handler for Error and Unhandled pages.
  static Function get unknownRoute {
    return (settings) {
      MaterialPageRoute(
        builder: (ctx) => const DashBoardScreen(),
      );
    };
  }

  /// Configures the initial route.
  static String get initialRoute {
    return AppRouter.dashboardScreen;
  }
}
