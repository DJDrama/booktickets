import 'package:booktickets/screens/bottom_bar.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // remove debug banner
        title: 'Flutter Demo',
        theme: ThemeData(
          /*colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),*/
          primaryColor: primary,
          useMaterial3: true,
        ),
        home: const BottomBar(),
      ),
    );
  }
}
