import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collegeconnect/comments_model.dart';
import 'package:collegeconnect/posts_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Myposts extends StatefulWidget {
  const Myposts({super.key});

  @override
  State<Myposts> createState() => _MypostsState();
}

class _MypostsState extends State<Myposts> {
  String getCurrentUser() {
    final User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      final userId = user.uid;
      return userId;
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final _myPostController = TextEditingController();
    final _myCommentController = TextEditingController();
    DateTime _dateToPostController = DateTime.now();
    String formattedDate =
        DateFormat('MMM dd, HH:mm').format(_dateToPostController);

    Widget buildComment(CommentsModel comment) {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                4.0,
              ),
              color: Colors.grey.withOpacity(
                .1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.account_circle_rounded,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "@moham123",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        comment.comment,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black87,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    comment.timestamp,
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.0,
          ),
          Divider(),
        ],
      );
    }

    Widget buildPost(PostsModel post) {
      return Container(
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(
            .1,
          ),
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.account_circle_rounded),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "Mohammed Ali",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "@moham123",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.update,
                  size: 18.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              post.post,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 50,
                    child: Text(
                      post.timestamp,
                      style: TextStyle(
                        fontSize: 10.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.favorite_outline_outlined,
                        size: 16.0,
                      ),
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: ((context) => AlertDialog(
                                scrollable: true,
                                title: Container(
                                  padding: EdgeInsets.only(
                                    bottom: 16.0,
                                  ),
                                  child: Text(
                                    "Comments",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                backgroundColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    8.0,
                                  ),
                                ),
                                content: SingleChildScrollView(
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    child: Column(
                                      children: [
                                        StreamBuilder<List<CommentsModel>>(
                                          stream: readComment(post.id),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasError) {
                                              return Text(
                                                  'Something went wrong! ${snapshot.error}');
                                            } else if (snapshot.hasData) {
                                              final comment = snapshot.data!;
                                              return SizedBox(
                                                height: 600.0,
                                                child: ListView(
                                                  shrinkWrap: true,
                                                  children: comment
                                                      .map(buildComment)
                                                      .toList(),
                                                ),
                                              );
                                            } else {
                                              return Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            }
                                          },
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        Container(
                                          height: 42.0,
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 16.0,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1.0,
                                              color:
                                                  Colors.grey.withOpacity(.5),
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              40.0,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: TextField(
                                                  controller:
                                                      _myCommentController,
                                                  keyboardType:
                                                      TextInputType.text,
                                                  cursorHeight: 14.0,
                                                  cursorWidth: 1.0,
                                                  cursorColor: Colors.grey,
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.zero,
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  final comment = CommentsModel(
                                                    comment:
                                                        _myCommentController
                                                            .text,
                                                    timestamp: formattedDate,
                                                  );
                                                  createComment(
                                                      comment, post.id);
                                                  _myCommentController.clear();
                                                },
                                                child: Icon(
                                                  Icons.send_rounded,
                                                  size: 20.0,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        );
                      },
                      child: Icon(
                        Icons.chat_rounded,
                        size: 16.0,
                      ),
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'All Posts',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 14.0,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 16.0,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    bottom: 16.0,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(
                      .1,
                    ),
                    borderRadius: BorderRadius.circular(
                      6.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search for a post ...",
                            hintStyle: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey.withOpacity(
                                .8,
                              ),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search_rounded,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: StreamBuilder<List<PostsModel>>(
                  stream: readUsers(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong! ${snapshot.error}');
                    } else if (snapshot.hasData) {
                      final post = snapshot.data!;
                      return ListView(
                        children: post.map(buildPost).toList(),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {
          showDialog(
              context: context,
              builder: ((context) => AlertDialog(
                    title: (Text(
                      "Add Post",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    )),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                    actions: [
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        height: 180.0,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(
                            .1,
                          ),
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                        ),
                        child: TextField(
                          controller: _myPostController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Your Post...",
                            hintStyle: TextStyle(
                              fontSize: 12.0,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.withOpacity(
                                .8,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              final post = PostsModel(
                                userId: getCurrentUser(),
                                post: _myPostController.text,
                                timestamp: formattedDate,
                              );
                              createPost(post);
                              Navigator.pop(context);
                              _myPostController.clear();
                            },
                            icon: Icon(
                              Icons.send_rounded,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      )
                    ],
                  )));
        },
        child: Icon(Icons.chat_rounded),
      ),
    );
  }

  Future<void> createComment(CommentsModel comment, String postId) async {
    final docUser = FirebaseFirestore.instance
        .collection('posts')
        .doc(postId)
        .collection('comments')
        .doc();
    comment.id = docUser.id;
    final json = comment.toJson();
    await docUser.set(json);
  }

  Stream<List<CommentsModel>> readComment(String postId) =>
      FirebaseFirestore.instance
          .collection('posts')
          .doc(postId)
          .collection('comments')
          .orderBy('date', descending: true)
          .snapshots()
          .map((snapshot) => snapshot.docs
              .map((doc) => CommentsModel.fromJson(doc.data()))
              .toList());

  Future<void> createPost(PostsModel post) async {
    final docUser = FirebaseFirestore.instance.collection('posts').doc();
    post.id = docUser.id;
    final json = post.toJson();
    await docUser.set(json);
  }

  Stream<List<PostsModel>> readUsers() => FirebaseFirestore.instance
      .collection('posts')
      .orderBy('date', descending: true)
      .where('userID',
          isEqualTo: FirebaseAuth.instance.currentUser?.uid.toString())
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => PostsModel.fromJson(doc.data())).toList());
}
