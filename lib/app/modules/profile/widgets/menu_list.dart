import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List iconlist = const [
      Icons.settings,
      Icons.access_time,
      Icons.more_time_outlined,
      Icons.qr_code,
      Icons.bookmark_outline_outlined,
      Icons.menu,
      Icons.star_border,
    ];

    List<String> menunames = [
      'Settings',
      'Archive',
      'Your activity',
      'QR code',
      'Saved',
      'Close Friends',
      'Favorites',
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: iconlist.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Row(
              children: [
                Icon(iconlist[index]),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.06,
                ),
                Text(menunames[index])
              ],
            ),
          );
        },
      ),
    );
  }
}
