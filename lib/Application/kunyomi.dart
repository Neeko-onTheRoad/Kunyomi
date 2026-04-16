import 'package:flutter/material.dart';
import 'package:kunyomi/Application/kunyomi_body.dart';

class Kunyomi extends StatelessWidget {

  const Kunyomi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const KunyomiBody(),
      bottomNavigationBar: const BottomAppBar(),
    );
  }

}