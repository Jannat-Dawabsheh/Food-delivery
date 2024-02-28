import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/pages/custom_bottom_navbar.dart';
import 'package:food_delivery/pages/home_page.dart';
import 'package:food_delivery/pages/search_page.dart';
import 'package:food_delivery/utils/app_routes.dart';
import 'package:food_delivery/view_models/cubit/search_cubit.dart';
class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const CustomNavbar(),
          settings: settings,
        );

      case AppRoutes.search:
        return MaterialPageRoute(
          builder: (_) =>  BlocProvider(
            create: (context) => SearchCubit(),
            child: const SearchPage(),
          ),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );
    }
  }
}
