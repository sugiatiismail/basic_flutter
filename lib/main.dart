import 'package:basic_flutter/pages/site/contact.dart';
import 'package:basic_flutter/pages/site/experience.dart';
import 'package:basic_flutter/pages/site/portfolio.dart';
import 'package:basic_flutter/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

void main() {
  runApp(const MyApp());
}

final routes = RouteMap(routes: {
  '/': (_) => MaterialPage(child: Welcome()),
  '/site/portfolio': (_) => MaterialPage(child: SitePortfolio()),
  '/site/experience': (_) => MaterialPage(child: SiteExperience()),
  '/site/contact': (_) => MaterialPage(child: SiteContact()),
});

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
      routeInformationParser: RoutemasterParser(),
    );
  }
}
