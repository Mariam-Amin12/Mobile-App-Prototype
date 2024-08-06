import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/app/presentation/screen/app.dart';
import 'package:getpayin_task/core/serveces/serverces_locator.dart';

import 'core/util/const/size/size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // initializing the SizeConfig
    SizeConfig.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(appController: sl()),
    );
  }
}
