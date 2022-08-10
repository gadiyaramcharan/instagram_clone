import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    
    const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      // themeMode: ThemeData.dark(),
      // Theme: ThemeData.dark(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
