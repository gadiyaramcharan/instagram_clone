import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram/app/modules/home/widgets/message_notification.dart';
import 'package:instagram/app/modules/home/widgets/messages_screen.dart';
import 'package:instagram/app/modules/home/widgets/post/posts.dart';
import 'package:instagram/app/modules/home/widgets/stories.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onHorizontalDragUpdate: (details) {
          int sensitivity = 8;
          if (details.delta.dx > sensitivity) {
            // Right Swipe
          } else if (details.delta.dx < -sensitivity) {
            //Left Swipe
            Get.to(const MessageScreen(),
                duration: const Duration(milliseconds: 500));
          }
        },
        // onPanUpdate: (details) {
        //   // Swiping in right direction.
        //   // if (details.delta.dx > 0) {}

        //   // Swiping in left direction.
        //   if (details.delta.dx < 0) {
        //     Get.to(const MessageScreen());
        //   }
        // },
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: MessageNotification(),
            ),
            const Expanded(flex: 3, child: Stories()),
            // nded(flex: 2, child: Stories()),
            const Expanded(
              flex: 13,
              child: Posts(),
            ),
          ],
        ),
      ),
    );
  }
}
