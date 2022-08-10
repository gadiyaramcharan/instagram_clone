import 'package:flutter/material.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: index == 3
                ? Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: const BorderRadius.all(
                          //     Radius.circular(40)),
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
                      // const CircleAvatar(
                      //   radius: 30,
                      //   backgroundColor: Colors.transparent,
                      //   child: Icon(Icons.add),
                      // ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.06,
                      ),
                      const Text('Add account'),
                    ],
                  )
                : Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.06,
                      ),
                      const Text('Account name'),
                      const Spacer(),
                      Radio(value: index, groupValue: 1, onChanged: (value) {})
                    ],
                  ),
          );
        },
      ),
    );
  }
}
