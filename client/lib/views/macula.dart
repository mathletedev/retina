import 'package:flutter/material.dart';

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.description,
    required this.icon,
    this.onPressed = _ActionButton._defaultOnPressed,
  });

  final String description;
  final IconData icon;
  final void Function() onPressed;

  static void _defaultOnPressed() {}

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
        onPressed: onPressed,
        label: Text(description),
        icon: Icon(icon),
      ),
    );
  }
}

class MaculaView extends StatefulWidget {
  final void Function(int) setViewCallback;

  const MaculaView({super.key, required this.setViewCallback});

  @override
  State<MaculaView> createState() => _MaculaViewState();
}

class _MaculaViewState extends State<MaculaView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const _ActionButton(
            description: 'Personal details', icon: Icons.person),
        const Divider(height: 0),
        const _ActionButton(description: 'Security', icon: Icons.security),
        const Divider(height: 0),
        const _ActionButton(description: 'Network', icon: Icons.share),
        const Divider(height: 0),
        const SizedBox(height: 50),
        const Divider(height: 0),
        const _ActionButton(
            description: 'Resume', icon: Icons.document_scanner),
        const Divider(height: 0),
        const _ActionButton(description: 'Test scores', icon: Icons.assessment),
        const Divider(height: 0),
        const _ActionButton(description: 'Awards', icon: Icons.emoji_events),
        const Divider(height: 0),
        const SizedBox(height: 50),
        const Divider(height: 0),
        const _ActionButton(
            description: 'Applications', icon: Icons.history_edu),
        const Divider(height: 0),
        const _ActionButton(description: 'College search', icon: Icons.school),
        const Divider(height: 0),
        const _ActionButton(description: 'Job search', icon: Icons.work),
        const Divider(height: 0),
        const SizedBox(height: 50),
        const Divider(height: 0),
        _ActionButton(
            description: 'Sign out',
            icon: Icons.logout,
            onPressed: () {
              widget.setViewCallback(0);
            }),
        const Divider(height: 0),
      ],
    );
  }
}
