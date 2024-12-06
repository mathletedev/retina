import 'package:flutter/material.dart';

class IrisView extends StatefulWidget {
  const IrisView({super.key});

  @override
  State<IrisView> createState() => _IrisViewState();
}

class _IrisViewState extends State<IrisView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text('What are some clubs I should join?'),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 450),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                        """As a sophomore interested in computer science, here are some club suggestions to enhance your skills and explore your interests:

1. Computer Science Club:  
If your school has one, this is a great place to start. You can participate in coding challenges, hackathons, and collaborative projects. If it doesn't exist, consider starting one!

2. Robotics Club:  
Learn how to design, build, and program robots. It's a hands-on way to apply your coding knowledge and gain experience with hardware.

3. Math Club or STEM Club:  
Mathematics is foundational to computer science. These clubs often involve problem-solving and competitions that can sharpen your logical thinking.

4. Hackathons or Coding Competitions (e.g., USACO, Codeforces):  
Look for clubs or groups that participate in these competitions. They help improve your coding skills and problem-solving under pressure.

5. Tech or Engineering Club:  
Explore broader technology-related projects, like 3D printing, app development, or electronics.

6. Cybersecurity or Ethical Hacking Club:  
If your school has one, this is a fantastic way to dive into topics like network security, cryptography, and ethical hacking.

Would you like help exploring specific opportunities, competitions, or local groups related to these clubs?"""),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(height: 0),
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    hintText: 'Ask Iris...',
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 48,
                child: OutlinedButton(
                  child: const Icon(Icons.send),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
