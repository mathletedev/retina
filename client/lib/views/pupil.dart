import 'package:flutter/material.dart';
import 'package:retina/widgets/post.dart';

class PupilView extends StatefulWidget {
  const PupilView({super.key});

  @override
  State<PupilView> createState() => _PupilViewState();
}

class _PupilViewState extends State<PupilView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: const [
          Post(
            author: 'Neal Wang',
            imagePath: 'assets/post_deca.jpg',
            likes: '100',
            comments: '10',
            shares: '5',
            description:
                '🚀 Had a blast at ICDC 2024! I presented about Logos, an educational institute that provides free computer science camps to schools around the world. I met a lot of awesome DECA people!',
          ),
          Divider(height: 0),
          Post(
              author: 'Washington DECA',
              imagePath: 'assets/post_wadeca.jpg',
              likes: '434',
              comments: '57',
              shares: '32',
              description:
                  'It\'s here! 2025 State Career Development Conference: Infinity!'),
          Divider(height: 0),
          Post(
            author: 'Roger Federer',
            imagePath: 'assets/post_federer.jpg',
            likes: '1.2M',
            comments: '10K',
            shares: '30K',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Post'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
