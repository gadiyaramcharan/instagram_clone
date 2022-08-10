import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/app/modules/home/widgets/message_list.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          // Note: Sensitivity is integer used when you don't want to mess up vertical drag
          int sensitivity = 8;
          if (details.delta.dx > sensitivity) {
            // Right Swipe
            Get.back();
            // Navigator.pop(context, );

          }
          // else if (details.delta.dx < -sensitivity) {
          //   //Left Swipe
          //   Navigator.pop(context);
          // }
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: GestureDetector(
              onTap: (() {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    isDismissible: true,
                    enableDrag: true,
                    context: context,
                    builder: (_) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 0.4,
                      );
                    });
              }),
              child: Row(
                children: const [
                  Text('Account_Name'),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.white54,
                    size: 20,
                  )
                  // ExpandIcon(
                  //   size: 20,
                  //   onPressed: (_) {
                  //     showModalBottomSheet(
                  //         context: context,
                  //         builder: (_) {
                  //           return Container(
                  //             color: Colors.amber,
                  //             height: MediaQuery.of(context).size.height * 0.4,
                  //           );
                  //         });
                  //   },
                  //   padding: const EdgeInsets.all(0),
                  // )
                ],
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.video_call_outlined,
                    size: 35,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 35,
                  )),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.045,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        // isDense: true,
                        filled: true,
                        fillColor: Colors.grey.shade900,
                        hintText: 'Search',
                        contentPadding: const EdgeInsets.only(
                          left: 14.0, //top: 5, bottom: 5
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Messages',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      TextButton(
                          onPressed: () {}, child: const Text('Requests'))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: MessgaeList()))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
