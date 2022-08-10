import 'package:flutter/material.dart';
import 'package:instagram/app/modules/home/widgets/instagram_image.dart';
import 'package:instagram/app/modules/home/widgets/message_icons.dart';

class MessageNotification extends StatefulWidget {
  MessageNotification({Key? key}) : super(key: key);

  @override
  State<MessageNotification> createState() => _MessageNotificationState();
}

class _MessageNotificationState extends State<MessageNotification> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InstagramImage(),
        const MessageIcons()
      ],
    );
  }
}