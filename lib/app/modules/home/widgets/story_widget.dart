import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key? key, required this.name, })
      : super(key: key);

  String name;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(13.0, 17, 13, 10),
          child:
              // Container(
              //   decoration: const BoxDecoration(
              //     shape: BoxShape.circle,
              //     gradient: LinearGradient(
              //       colors: [
              //         Colors.amber,
              //         Colors.red,
              //         Colors.purple,
              //       ],
              //     ),
              //   ),
              //   child: CircleAvatar(radius: 33),
              // ),
              CircleAvatar(
            radius: 35,
            // backgroundColor: Colors.amber,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Colors.amber,
                    Colors.red,
                    Colors.purple,
                  ],
                ),
              ),
              child: const Padding(
                padding:  EdgeInsets.all(4.0),
                child: CircleAvatar(
                  // backgroundImage: AssetImage(assetname),
                  radius: 32,
                  backgroundColor: Colors.grey,
                ),
              ),
            ),

            // CircleAvatar(
            //   backgroundImage: AssetImage(assetname),
            //   radius: 32,
            //   backgroundColor: Colors.grey,
            // ),
          ),
        ),
        Text(name)
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * 0.04,
        // )
      ],
    );
  }
}
