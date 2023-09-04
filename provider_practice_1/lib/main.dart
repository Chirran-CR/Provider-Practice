import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:provider_practice_1/using Provider/home_screen.dart";
import "package:provider_practice_1/using%20Provider/count_change_notifier.dart";
// import "package:provider_practice_1/using Stateful Widget/home_screen.dart";

void main() {
  runApp(const MyAppWidget());
}

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountChangeNotifier(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomeScreen(),
        home: HomeScreen(),
      ),
    );
  }
}
