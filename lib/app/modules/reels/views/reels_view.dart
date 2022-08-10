import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram/app/modules/reels/widgets/reel.dart';

import '../controllers/reels_controller.dart';

class ReelsView extends GetView<ReelsController> {
  const ReelsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 2,
          itemBuilder: (context, index) {
            return
                //  Center(
                //   child: Text('data'),
                // );

                Reels();
          }),
    );
  }
}
