import 'package:flutter/material.dart';
import 'package:hng_stage_3_task/countries/views/home_screen.dart';
import 'package:hng_stage_3_task/route_folder/route_name.dart';

import '../countries/views/country_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.root:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteName.countryPage:
        return MaterialPageRoute(builder: (_) => const CountryPage());
      default:
      return MaterialPageRoute( builder: (_) => const HomePage());
    }
  }
}
