import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/add_post_screen.dart';
import 'package:flutter_application_4/screens/feed_screen.dart';
import 'package:flutter_application_4/screens/profile_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  FeedScreen(),
  AddPostScreen(),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
