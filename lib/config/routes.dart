import 'package:bigapp/presentation/listpengiriman_screen.dart/listpengiriman_screen.dart';
import 'package:flutter/material.dart';

import '../presentation/login_screen/login_screen.dart';

class Routes {
  Map<String, WidgetBuilder> getRoutes = {
    '/': (_) => LoginScreen(),
    '/listpengiriman': (_) => ListPengirimanScreen(),
  };
}
