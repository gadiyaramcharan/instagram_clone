import 'package:flutter/material.dart';
import 'package:instagram/app/modules/profile/widgets/accounts_list.dart';
import 'package:instagram/app/modules/profile/widgets/menu_list.dart';

class TopRow extends StatelessWidget {
  const TopRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
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
                    // height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.008,
                            width: MediaQuery.of(context).size.width * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                        const AccountsList(),
                      ],
                    ),
                  );
                });
          },
          child: Row(
            children: const [
              Text('Your_Name'),
              Icon(Icons.keyboard_arrow_down_sharp),
            ],
          ),
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
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
                      // height: MediaQuery.of(context).size.height * 0.45,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
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
                          const MenuList()
                        ],
                      ),
                    );
                  });
            },
            icon: const Icon(Icons.menu)),
      ],
    );
  }
}
