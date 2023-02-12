import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/resources/firestore_methods.dart';
import 'package:flutter_application_4/utils/colors.dart';
import 'package:flutter_application_4/utils/global_variable.dart';
import 'package:flutter_application_4/utils/utils.dart';
import 'package:flutter_application_4/widgets/post_card.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  // deletePost(String postId) async {
  //   try {
  //     await FireStoreMethods().deletePost(postId);
  //   } catch (err) {
  //     showSnackBar(
  //       context,
  //       err.toString(),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
          width > webScreenSize ? webBackgroundColor : mobileBackgroundColor,
      appBar: width > webScreenSize
          ? null
          : AppBar(
              backgroundColor: mobileBackgroundColor,
              centerTitle: false,
              title: const Text('Standart Task'),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.messenger_outline,
                    color: primaryColor,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('posts').snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (ctx, index) => Container(
              margin: EdgeInsets.symmetric(
                horizontal: width > webScreenSize ? width * 0.3 : 0,
                vertical: width > webScreenSize ? 15 : 0,
              ),
              child: Dismissible(
                onDismissed: (direction) {
                  setState(() {
                    snapshot.data?.docs.removeAt(index);
                  });
                },
                secondaryBackground: Container(
                  child: Center(
                    child: Text(
                      'Delete',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ),
                  color: Colors.red,
                ),
                background: Container(),
                child: PostCard(
                  snap: snapshot.data!.docs[index].data(),
                ),
                key: UniqueKey(),
                direction: DismissDirection.endToStart,
              ),
            ),
          );
        },
      ),
    );
  }
}
