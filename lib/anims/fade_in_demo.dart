import 'package:flutter/material.dart';
import 'package:flutter_animate/res/app_assets.dart';

class FadeInDemo extends StatefulWidget {
  const FadeInDemo({super.key});

  @override
  State<FadeInDemo> createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(AppAssets.owlUrl),
        TextButton(
          onPressed: () {
            setState(() {
              _opacity = 1;
            });
          },
          child: const Text("Show Details"),
        ),
        AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 2),
          child: const Column(
            children: [
              Text('Type: Owl'),
              Text('Age: 39'),
              Text('Employment: None'),
            ],
          ),
        ),
      ],
    );
  }
}
