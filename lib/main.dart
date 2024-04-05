import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common/colors.dart';
import 'common/constants.dart';
import 'common/routes.dart';
import 'package:codeland/view/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppConstants.appTitle,
          theme: ThemeData(
             colorScheme:
            ColorScheme.fromSeed(seedColor: AppColors.white),
            useMaterial3: true,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
          home: const SplashScreen(),
          routes: AppRouter.setUpRoutes,
    );
  }
}
