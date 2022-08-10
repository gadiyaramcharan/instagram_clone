import 'package:flutter/material.dart';
import 'package:instagram/app/modules/home/widgets/post/post_image.dart';
import 'package:instagram/app/modules/home/widgets/post/post_information.dart';
import 'package:instagram/app/modules/home/widgets/post/post_like.dart';
import 'package:instagram/app/modules/home/widgets/post/post_owner_row.dart';

class PostWidget extends StatefulWidget {
  PostWidget({Key? key}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const PostOwnerRow(),
          PostImage(),
          const PostLikeRow(),
           PostInformation()
        ],
      ),
    );
  }
}
