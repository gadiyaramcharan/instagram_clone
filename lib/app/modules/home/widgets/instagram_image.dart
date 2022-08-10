import 'package:flutter/material.dart';

class InstagramImage extends StatefulWidget {
  InstagramImage({Key? key}) : super(key: key);

  @override
  State<InstagramImage> createState() => _InstagramImageState();
}

class _InstagramImageState extends State<InstagramImage> {
  // bool _isExpandable = false;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMenu(
          color: Colors.black.withOpacity(0.9),
          context: context,
          position: const RelativeRect.fromLTRB(0, 100, 100, 100),
          items: [
            PopupMenuItem<String>(
                value: 'Doge',
                child: Row(
                  children: const [
                    Expanded(child: Text('Following')),
                    Expanded(child: Icon(Icons.person_add)),
                  ],
                )),
            PopupMenuItem<String>(
                value: 'Lion',
                child: Row(
                  children: const [
                    Expanded(child: Text('Favorites')),
                    Expanded(child: Icon(Icons.favorite)),
                  ],
                )),
          ],
          elevation: 20.0,
        );
      },
      child: Row(
        children: [
          Image.asset(
            'assets/images/Instagram_name.png',
            color: Colors.white,
          ),
          const Icon(Icons.keyboard_arrow_down_sharp),
        ],
      ),
    );
  }
}

