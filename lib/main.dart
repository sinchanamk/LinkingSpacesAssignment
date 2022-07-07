import 'package:assignmnt/Widgets/appbar.dart';
import 'package:assignmnt/Screens/bottomnav.dart';
import 'package:assignmnt/common/common_styles.dart';
import 'package:assignmnt/common/screen_width_and_height.dart';
import 'package:assignmnt/common/utils.dart';
import 'package:assignmnt/Screens/videoscreen2_backend_error.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Apiservices/data_fetch_provider.dart';
import 'common/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<APIProvider>(create: (_) => APIProvider()),
        ],
        child: MaterialApp(
          title: 'Event shows',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(color: Colors.lightBlueAccent),
              backgroundColor: Colors.white,
              ),
          ),
          home: const BottomnavigtionScreen(),
        ));
  }
}
