import 'package:flutter/material.dart';
import 'package:flutter_application_4/resources/auth_methods.dart';
import 'package:flutter_application_4/screens/login_screen.dart';
import 'package:flutter_application_4/utils/colors.dart';
import 'package:flutter_application_4/widgets/follow_button.dart';

class ProfileScreen extends StatefulWidget {
  final String uid;
  const ProfileScreen({Key? key, required this.uid}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text('Profile for Standart Task'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                FollowButton(
                  text: 'Sign Out',
                  backgroundColor: mobileBackgroundColor,
                  textColor: primaryColor,
                  borderColor: Colors.grey,
                  function: () async {
                    await AuthMethods().signOut();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
