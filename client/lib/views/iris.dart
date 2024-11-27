import 'package:flutter/material.dart';

class IrisView extends StatefulWidget {
  const IrisView({super.key});

  @override
  State<IrisView> createState() => _IrisViewState();
}

class _IrisViewState extends State<IrisView> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Iris'));
  }
}
