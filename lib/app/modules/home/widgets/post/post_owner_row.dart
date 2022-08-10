import 'package:flutter/material.dart';
import 'dart:math' as math;

class PostOwnerRow extends StatelessWidget {
  const PostOwnerRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage('assets/images/flutter_logo.webp'),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        const Text('The_Meme_Page'),
        const Spacer(),
        IconButton(
            onPressed: () {
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.008,
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                            //Row Circle
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    width: MediaQuery.of(context).size.width *
                                        0.16,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // borderRadius: const BorderRadius.all(
                                      //     Radius.circular(40)),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.grey,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    child: Icon(Icons.share_outlined),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const Text('Share')
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    width: MediaQuery.of(context).size.width *
                                        0.16,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // borderRadius: const BorderRadius.all(
                                      //     Radius.circular(40)),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.grey,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    child: Transform.rotate(
                                        angle: -45 * math.pi / 180,
                                        child: const Icon(Icons.link)),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const Text('Link')
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    width: MediaQuery.of(context).size.width *
                                        0.16,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // borderRadius: const BorderRadius.all(
                                      //     Radius.circular(40)),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.red.shade200,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.report,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  const Text(
                                    'Report',
                                    style: TextStyle(color: Colors.red),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Divider(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text('Why you\'re seeing this post'),
                            ),
                          ),
                          const Divider(),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: const Text('Add  to favorites'),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: const Text('Hide'),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: const Text('Unfollow'),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            icon: const Icon(Icons.more_vert))
      ],
    );
  }
}
