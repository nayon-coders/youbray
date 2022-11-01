import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yo_bray/controller/auth_controller.dart';
import 'package:yo_bray/ulits/constant.dart';

import 'config/app_routes.dart';
import 'notification/notification.dart';
import 'view/unknown_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  SharedPreferences preferences = await SharedPreferences.getInstance();
  Get.put(preferences);

  // setPathUrlStrategy();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  LocalNotificationService.initialize();

  // await GetStorage.init();

  Get.put(AuthController());
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Yobray',
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en', 'US')],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimary,
        appBarTheme: AppBarTheme(backgroundColor: kPrimary),
      ),
      defaultTransition: Transition.cupertino,
      // home: GoogleAuthPage(),
      initialRoute:
          kToken.isEmpty ? AppRoutes.signin_page : AppRoutes.home_page,
      unknownRoute: GetPage(
        name: AppRoutes.notfound_page,
        page: () => UnknownRoutePage(),
      ),
      getPages: AppRoutes.routes,
      routingCallback: (routing) {
        if (routing != null && routing.current == '/second') {
          print('this is second page');
        }
      },
    );
  }
}
