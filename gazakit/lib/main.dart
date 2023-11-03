import 'package:flutter/material.dart';

import 'src/utils/routes.dart';
void main(){
  runApp(MyApp(routes: AppRoutes(),));
}
class MyApp extends StatelessWidget {
  final AppRoutes routes;
  const MyApp({super.key,required this.routes});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GazaKit",
      onGenerateRoute: routes.onGenerateRoute,
    );
  }
}