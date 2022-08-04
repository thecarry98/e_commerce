import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';

//  @ResourceConfig(resourcePath: 'assets/')
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
