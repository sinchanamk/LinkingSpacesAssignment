import 'package:assignmnt/Screens/videoscreen.dart';
import 'package:assignmnt/main.dart';
import 'package:assignmnt/Screens/videoscreen2_backend_error.dart';
import 'package:flutter/material.dart';

import 'feed_page.dart';
import '../common/color.dart';
import '../common/common_styles.dart';

class BottomnavigtionScreen extends StatefulWidget {
  const BottomnavigtionScreen({super.key});

  @override
  State<BottomnavigtionScreen> createState() => _BottomnavigtionScreenState();
}

class _BottomnavigtionScreenState extends State<BottomnavigtionScreen> {
  int currentindex = 0;
  List<Widget> body = [
    const MyFeedPage(),
    const VideoScreen2BackendError(),
    const VideoScreen(),
    const Center(
      child: Text('Notication'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: body.elementAt(currentindex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          selectedItemColor: ColorsConsts.blue,
          currentIndex: currentindex,
          type: BottomNavigationBarType.shifting,
          unselectedLabelStyle: CommonStyles.labelText16w500Black(),
          selectedLabelStyle: CommonStyles.labelText16w500Black(),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: ColorsConsts.grey,              icon: Image.asset(
                  'assets/dashboard.png',
                  height: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
               backgroundColor:Color.fromARGB(255, 245, 182, 178) ,
             
                icon: Image.asset(
                  'assets/people.png',
                  height: 25,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 175, 230, 247),
             
                icon: Image.asset(
                  'assets/video.png',
                  height: 25,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 164, 212, 252),
  
             
                icon: Image.asset(
                  'assets/notification.png',
                  height: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 245, 209, 226),
             
                icon: Image.asset(
                  'assets/user.png',
                  height: 20,
                ),
                label: ''),
          ],
        ),
      ),
    ));
  }
}
