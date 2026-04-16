import 'package:flutter/material.dart';
import 'package:kunyomi/Application/kunyomi_body.dart';

class Kunyomi extends StatelessWidget {

  const Kunyomi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceBright,
      appBar: buildAppBar(context),
      body: const KunyomiBody()
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: Text("これは日本語のフォントの試しです", style: TextStyle(fontWeight: FontWeight.bold)),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          print("fuck");
        }
      ),
    );
  }

}