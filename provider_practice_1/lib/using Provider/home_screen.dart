import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:provider_practice_1/using%20Provider/count_change_notifier.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("build of homescreen");
    var countProvider = Provider.of<CountChangeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Using Provider"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Text(
          countProvider.count.toString(),
          style: const TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        countProvider.increaseCount();
      },
        child: const Icon(Icons.star_outline_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
