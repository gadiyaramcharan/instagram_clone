import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MessgaeList extends StatelessWidget {
  MessgaeList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return index == 0
            ? MessageListWidget(unread: true)
            : MessageListWidget(unread: false);
      },
    );
  }
}

class MessageListWidget extends StatelessWidget {
  MessageListWidget({Key? key, required this.unread}) : super(key: key);
  bool unread = false;

  @override
  Widget build(BuildContext context) {
    final ImagePicker _picker = ImagePicker();

    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.07,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name of account',
                  style: unread == true
                      ? const TextStyle(fontWeight: FontWeight.bold)
                      : const TextStyle(color: Colors.white38)),
              Text(
                'Message . 1h',
                style: unread == true
                    ? const TextStyle(fontWeight: FontWeight.bold)
                    : const TextStyle(color: Colors.white38),
              ),
            ],
          ),
          const Spacer(),
          Visibility(
            visible: unread,
            child: const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 4,
                backgroundColor: Colors.blue,
              ),
            ),
          ),
          IconButton(
              onPressed: () async {
                await _picker.pickImage(source: ImageSource.camera);
              },
              icon: Icon(
                Icons.camera_alt_outlined,
                color: unread == false ? Colors.white38 : Colors.white,
              )),
        ],
      ),
    );
  }
}
