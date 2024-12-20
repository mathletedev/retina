import 'package:flutter/material.dart';
import 'package:retina/views/iris.dart';
import 'package:retina/views/macula.dart';
import 'package:retina/views/pupil.dart';

void main() {
  runApp(const RetinaApp());
}

class RetinaApp extends StatelessWidget {
  const RetinaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retina',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainLayout(),
    );
  }
}

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _viewIndex = 0;

  void _onViewChanged(int index) {
    setState(() {
      _viewIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(switch (_viewIndex) {
          0 => 'Pupil',
          1 => 'Iris',
          2 => 'Macula',
          _ => 'Invalid view',
        }),
      ),
      body: switch (_viewIndex) {
        0 => const PupilView(),
        1 => const IrisView(),
        2 => const MaculaView(),
        _ => const Center(child: Text('Invalid view')),
      },
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.visibility),
            label: 'Pupil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tips_and_updates),
            label: 'Iris',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Macula',
          ),
        ],
        currentIndex: _viewIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: _onViewChanged,
        selectedLabelStyle: const TextStyle(fontSize: 0),
        unselectedLabelStyle: const TextStyle(fontSize: 0),
      ),
    );
  }
}
