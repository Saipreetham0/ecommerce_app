import 'package:ecommerce_app/scr/features/core/screens/home/home_screen.dart';
import 'package:ecommerce_app/scr/features/core/screens/login/login_screen.dart';
import 'package:ecommerce_app/scr/services/auth_provider.dart';
import 'package:ecommerce_app/scr/utils/app_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyApp',
        initialRoute: '/',
        onGenerateRoute: AppRoute.generateRoute,
      ),
    );
  }
}
