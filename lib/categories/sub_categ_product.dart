import 'package:flutter/material.dart';

class SubCategProduct extends StatelessWidget {
  final String mainCategName;
  final String subCategName;
  const SubCategProduct(
      {super.key, required this.subCategName, required this.mainCategName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        toolbarHeight: 100,
        title: Text(subCategName),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Text(mainCategName),
      ),
    );
  }
}
