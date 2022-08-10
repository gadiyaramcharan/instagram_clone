import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import 'package:instagram/app/modules/home/controllers/home_controller.dart';

class PostLikeRow extends StatelessWidget {
  const PostLikeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Row(
            children: [
              controller.like == false
                  ? IconButton(
                      onPressed: () {
                        controller.likechange();
                      },
                      icon: const Icon(Icons.favorite_border))
                  : IconButton(
                      onPressed: () {
                        controller.likechange();
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.messenger_outline)),
              Transform.rotate(
                  angle: -45 * math.pi / 180,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.send)),
                  ),),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    controller.savechange();
                  },
                  icon: controller.save == false
                      ? const Icon(Icons.bookmark_outline_outlined)
                      : const Icon(Icons.bookmark))
            ],
          );
        });
  }
}
