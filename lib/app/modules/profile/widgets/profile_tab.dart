import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ContainedTabBarView(
        tabBarProperties: const TabBarProperties(indicatorColor: Colors.white),
        tabs: const [
          Icon(Icons.grid_3x3_rounded),
          Icon(
            Icons.person_pin_rounded,
          ),
        ],
        views: [
          GridView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  color: Colors.grey,
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
          ),
          GridView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  color: Colors.teal,
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
          ),
        ],
      ),
    );
    // DefaultTabController(
    //   length: 2,
    //   child: SingleChildScrollView(
    //     child: SizedBox(
    //       height: MediaQuery.of(context).size.height,
    //       child: Column(
    //         children: <Widget>[
    //           // the tab bar with two items
    //           const SizedBox(
    //             height: 50,
    //             child: TabBar(
    //               tabs: [
    //                 Tab(
    //                   icon: Icon(Icons.directions_bike),
    //                 ),
    //                 Tab(
    //                   icon: Icon(
    //                     Icons.directions_car,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),

    //           // create widgets for each tab bar here
    //           Expanded(
    //             child: TabBarView(
    //               children: [
    //                 // first tab bar view widget
    //                 SingleChildScrollView(
    //                   child: GridView.builder(
    //                       itemCount: 50,
    //                       itemBuilder: (context, index) {
    //                         return Padding(
    //                           padding: const EdgeInsets.all(2.0),
    //                           child: Container(
    //                             color: Colors.grey,
    //                           ),
    //                         );
    //                       },
    //                       gridDelegate:
    //                           const SliverGridDelegateWithFixedCrossAxisCount(
    //                               crossAxisCount: 3)),
    //                 ),

    //                 // second tab bar viiew widget
    //                 const Center(
    //                   child: Text(
    //                     'Car',
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
