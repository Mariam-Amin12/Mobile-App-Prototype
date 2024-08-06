import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/app/controller/app_controller.dart';
import 'package:getpayin_task/feature/app/presentation/widget/nav_bar.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  App({super.key, required this.appController});
  final AppController appController;

  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
        create: (_) => AppController(),
        child: DefaultTabController(
            length: appController.navItem.length,
            child: Scaffold(
              backgroundColor: Colors.grey[100],
                bottomNavigationBar: NavBar(),
                body: SafeArea(
                  child: SingleChildScrollView(

                      child:Consumer<AppController>(
      builder: (context, appController, child) {
        return
                       appController.screens
                          .elementAt(appController.selectedNavItem);}),
                ),),),),);
  }
}
