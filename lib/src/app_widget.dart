import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/ui/themes/theme_config.dart';

class AppWidget extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();
  AppWidget({super.key}){

  }

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/login');
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Application Name',
      theme: ThemeConfig.theme,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
