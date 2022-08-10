import 'package:flutter/material.dart';

class StoryHighLights extends StatefulWidget {
  StoryHighLights({Key? key}) : super(key: key);

  @override
  State<StoryHighLights> createState() => _StoryHighLightsState();
}

class _StoryHighLightsState extends State<StoryHighLights> {
  bool visibility = false;
  bool isExanded = false;

  void highlightchange() {
    setState(() {
      visibility = !visibility;
      isExanded = !isExanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: highlightchange,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Story highlights',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Visibility(
                    visible: visibility,
                    child: const Text(
                      'Keep your favorite stories on your phone',
                    ),
                  )
                ],
              ),
              const Spacer(),
              ExpandIcon(
                onPressed: null,
                isExpanded: isExanded,
              )
            ],
          ),
        ),
        Visibility(
          visible: visibility,
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.12,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, index) {
                  return index == 0
                      ? Padding(
                          padding: const EdgeInsets.only(right: 8.0, left: 8),
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.16,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.06,
                              ),
                              const Text('New'),
                            ],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(right: 8.0, left: 8),
                          child: Column(
                            children: [
                              FittedBox(
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey.shade900,
                                  radius: 30,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.06,
                              ),
                              const Text(''),
                            ],
                          ),
                        );
                }),
          ),
        )
      ],
    );
  }
}
