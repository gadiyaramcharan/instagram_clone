import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram/app/modules/search/widget/grid.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      // isDense: true,
                      filled: true,
                      fillColor: Colors.grey.shade900,
                      hintText: 'Search',
                      contentPadding: const EdgeInsets.only(
                        left: 14.0, //top: 5, bottom: 5
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade800),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Grid()
            ],
          ),
        ),
      ),
    );
  }
}
