import 'package:flutter/material.dart';
import 'package:instagram/app/modules/home/widgets/story_widget.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  List name = [
    "Alex",
    "Jack",
    "Eric",
    "Sam",
    "Michael",
  ];
  List asset = [
    "assets/images/profile.png"
        "assets/images/profile.png"
        "assets/images/profile.png"
        "assets/images/profile.png"
        "assets/images/profile.png"
  ];

  // static final myDictionary = [
  //   {"name": "Alex", "asset": "assets/images/profile.png"},
  //   {"name": "Jack", "asset": "assets/images/profile.png"},
  //   {"name": "Eric", "asset": "assets/images/profile.png"},
  //   {"name": "Sam", "asset": "assets/images/profile.png"},
  //   {"name": "Michael", "asset": "assets/images/profile.png"}
  // ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(13.0, 17, 13, 10),
                child: Stack(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 35,
                      child: FlutterLogo(
                        size: 50,
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 11,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text('Your Story')
            ],
          ),
          // const StoryWidget()
          ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: name.length,
            itemBuilder: (BuildContext context, int index) {
              return StoryWidget(
                name: name[index],
              );

              // Text('${myDictionary[index]}');
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: const CircleAvatar(
              //     radius: 35,
              //     backgroundColor: Colors.grey,
              //   ),
              // );
            },
          ),
        ],
      ),
    );
  }
}
