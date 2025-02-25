import 'package:flutter/material.dart';
import 'package:retina/views/iris.dart';
import 'package:retina/views/login.dart';
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
        colorSchemeSeed: Colors.deepPurple,
        brightness: Brightness.dark,
        fontFamily: 'Agrandir',
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

  void _setViewCallback(int index) {
    setState(() {
      _viewIndex = index;
    });
  }

  void _onViewChanged(int index) {
    setState(() {
      _viewIndex = index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            Image.asset('assets/icon.png', height: 40),
            const SizedBox(width: 10),
            const Text('Retina',
                style: TextStyle(fontFamily: 'Magnolia Script', fontSize: 30))
          ],
        ),
      ),
      body: switch (_viewIndex) {
        0 => LoginView(setViewCallback: _setViewCallback),
        1 => const PupilView(),
        2 => const IrisView(),
        3 => MaculaView(setViewCallback: _setViewCallback),
        _ => const Center(child: Text('Invalid view')),
      },
      bottomNavigationBar: _viewIndex == 0
          ? null
          : BottomNavigationBar(
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
              currentIndex: _viewIndex - 1,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              onTap: _onViewChanged,
              selectedLabelStyle: const TextStyle(fontSize: 0),
              unselectedLabelStyle: const TextStyle(fontSize: 0),
            ),
    );
  }
}
