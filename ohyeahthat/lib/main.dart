import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ohyeahthat/app.dart';
import 'package:ohyeahthat/pages/keywordpage.dart';
import 'package:ohyeahthat/screen/details.dart';
import 'package:ohyeahthat/screen/login.dart';
import 'package:ohyeahthat/screen/home.dart';
import 'binding/init_binding.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:get/get.dart';

void main() {
  AwesomeNotifications().initialize(
    'resource://drawable/logo',
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic Notifications',
        defaultColor: Colors.teal,
        importance: NotificationImportance.High,
        channelShowBadge: true,
      )
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1125, 2436),
      builder: () => GetMaterialApp(
          title: '아맞다',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.blue,
            backgroundColor: Colors.white,
          ),
          home: const App(),
          initialBinding: InitBinding(),
          getPages: [
            GetPage(
              name: '/login',
              page: () => const LoginScreen(),
            ),
            GetPage(
              name: '/home',
              page: () => const HomeScreen(),
            ),
            GetPage(
              name: '/details',
              page: () => const DetailsScreen(),
            ),
            GetPage(
              name: '/keyword',
              page: () => const KeyWord(),
            )
          ]),
    );
  }
}
