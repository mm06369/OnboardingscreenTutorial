import 'package:flutter/material.dart';
import 'package:todo_app/routes/custom_routes.dart';
import 'package:todo_app/routes/route_name.dart';
import 'package:todo_app/views/login/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const LoginPage(),
      onGenerateRoute: CustomRoutes.allRoutes,
      initialRoute: splash,
    );
  }
}

