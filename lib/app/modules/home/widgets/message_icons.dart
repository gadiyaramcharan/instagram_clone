import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/app/modules/home/widgets/messages_screen.dart';

// import 'dart:math' as math;

class MessageIcons extends StatelessWidget {
  const MessageIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.add_box_outlined),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.07,
        ),
        Padding(
            padding: const EdgeInsets.only(bottom: 6.0, right: 8, top: 4),
            child: GestureDetector(
              onTap: () {
                Get.to(const MessageScreen(),
                    duration: const Duration(milliseconds: 500));
              },
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/insta_message_icon-removebg-preview.png',
                    color: Colors.white,
                  ),
                  const Positioned(
                    top: -1,
                    right: 0,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.redAccent,
                      child: Center(
                          child: FittedBox(
                              child: Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ))),
                    ),
                  ),
                ],
              ),
            )
            // Transform.rotate(
            //     angle: -45 * math.pi / 180,
            //     child: const Icon(
            //       Icons.send,
            //       size: 23,
            //     )),
            ),
      ],
    );
  }
}
