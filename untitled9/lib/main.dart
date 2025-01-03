import 'package:flutter/material.dart';
import 'package:untitled9/app/route.dart';
import 'package:untitled9/app/theme.dart';
import 'package:untitled9/views/app_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,

    );

  }
}
