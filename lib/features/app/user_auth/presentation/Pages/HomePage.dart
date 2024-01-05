// ignore: file_names
import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:studenterp/features/app/user_auth/presentation/Pages/Assignment.dart';
import 'package:studenterp/features/app/user_auth/presentation/Pages/Attendance.dart';
import 'package:studenterp/features/app/user_auth/presentation/Pages/Fees.dart';
import 'package:studenterp/features/app/user_auth/presentation/Pages/LoginPage.dart';
import 'package:studenterp/features/app/user_auth/presentation/Pages/Marks.dart';
import 'package:studenterp/features/app/user_auth/presentation/Pages/MyProfilePage.dart';
import 'package:studenterp/features/app/user_auth/presentation/Pages/Notice.dart';
import 'package:studenterp/features/app/user_auth/presentation/Pages/subject.dart';
import 'package:studenterp/global/common/toast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Hello Harsh!',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white)),
                  subtitle: Text(greeting(),
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white54)),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/st_p.jpg'),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('Attendance', CupertinoIcons.checkmark,
                      Colors.deepOrange, handleAttendance),
                  itemDashboard('Marks', CupertinoIcons.graph_circle,
                      Colors.green, handleMarks),
                  itemDashboard('Subjects', CupertinoIcons.book_circle,
                      Colors.purple, handleSubject),
                  itemDashboard('Notice', CupertinoIcons.bell_circle_fill,
                      Colors.brown, handleNotice),
                  itemDashboard('Fees', CupertinoIcons.money_dollar_circle,
                      Colors.indigo, handleFees),
                  itemDashboard('Assignment', CupertinoIcons.add_circled,
                      Colors.teal, handleAssignment),
                  itemDashboard('About', CupertinoIcons.person,
                      Colors.blue, handleAbout),
                  itemDashboard('LogOut', CupertinoIcons.arrow_turn_up_right,
                      Colors.pinkAccent, handleLogout),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background,
          VoidCallback onPressed) =>
      GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 5),
                    color: Theme.of(context)
                        .primaryColor
                        .withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 5)
              ]),
          child: GestureDetector(
            onTap: onPressed,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: background,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(iconData, color: Colors.white)),
                const SizedBox(height: 8),
                Text(title.toUpperCase(),
                    style:
                        Theme.of(context).textTheme.titleMedium)
              ],
            ),
          ),
        ),
      );

  greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  void handleLogout() {
    // ignore: unused_label
    onTap:
    () {
      showToast(message: "Successfully SignOut");
      FirebaseAuth.instance.signOut();
    };
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
        (route) => false);
  }

  void handleAssignment() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const AssignmentPage()));
  }
  void handleAbout() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyProfilePage()));
  }
  void handleFees() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const FeesPage()));
  }
  void handleSubject() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const SubjectPage()));
  }
  void handleNotice() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const NoticePage()));
  }
  void handleMarks() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const MarksPage()));
  }
  void handleAttendance() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const AttendancePage()));
  }
}
