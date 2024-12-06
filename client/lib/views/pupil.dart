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
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
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
              author: 'Roger Federer',
              likes: '1.2M',
              comments: '10K',
              shares: '30K',
              imagePath: 'assets/post_federer.jpg',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Post'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
