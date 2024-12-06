import 'package:flutter/material.dart';

class _ActionButton extends StatelessWidget {
  const _ActionButton({required this.description, required this.icon});

  final String description;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          fixedSize: const Size.fromHeight(50),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          alignment: Alignment.centerLeft,
        ),
        onPressed: () {},
        label: Text(description),
        icon: Icon(icon),
      ),
    );
  }
}

class MaculaView extends StatefulWidget {
  const MaculaView({super.key});

  @override
  State<MaculaView> createState() => _MaculaViewState();
}

class _MaculaViewState extends State<MaculaView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _ActionButton(description: 'Personal details', icon: Icons.person),
        Divider(height: 0),
        _ActionButton(description: 'Security', icon: Icons.security),
        Divider(height: 0),
        _ActionButton(description: 'Network', icon: Icons.share),
        Divider(height: 0),
        SizedBox(height: 50),
        Divider(height: 0),
        _ActionButton(description: 'Resume', icon: Icons.document_scanner),
        Divider(height: 0),
        _ActionButton(description: 'Test scores', icon: Icons.assessment),
        Divider(height: 0),
        _ActionButton(description: 'Awards', icon: Icons.emoji_events),
        Divider(height: 0),
        SizedBox(height: 50),
        Divider(height: 0),
        _ActionButton(description: 'Applications', icon: Icons.history_edu),
        Divider(height: 0),
        _ActionButton(description: 'College search', icon: Icons.school),
        Divider(height: 0),
        _ActionButton(description: 'Job search', icon: Icons.work),
        Divider(height: 0),
        SizedBox(height: 50),
        Divider(height: 0),
        _ActionButton(description: 'Sign out', icon: Icons.logout),
        Divider(height: 0),
      ],
    );
  }
}
