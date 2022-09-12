import 'package:flutter/material.dart';

import '../presentation/login_screen/login_screen.dart';

class Routes {
  Map<String, WidgetBuilder> getRoutes = {
    '/': (_) => LoginScreen(),
  };
}
