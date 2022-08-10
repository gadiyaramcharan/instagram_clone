import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:instagram/app/modules/home/controllers/home_controller.dart';

class PostInformation extends StatelessWidget {
  PostInformation({Key? key}) : super(key: key);

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: GetBuilder<HomeController>(
                  init: HomeController(),
                  builder: (controller) {
                    return Text(
                      '${controller.likecount} likes',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    );
                  })),
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                      text: 'The_Meme_Page',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: ' this is a meme page',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'View all comments',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          // Align(
          //     alignment: Alignment.centerLeft,
          //     child: Row(
          //       children: const[
          //          CircleAvatar(
          //           radius: 15,
          //           backgroundColor: Colors.grey,
          //         ),

          //       ],
          //     ))
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '4 hours ago',
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}
