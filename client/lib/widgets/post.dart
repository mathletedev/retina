import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post(
      {super.key,
      required this.author,
      required this.imagePath,
      required this.likes,
      required this.comments,
      required this.shares,
      this.description});

  final String author;
  final String imagePath;
  final String likes;
  final String comments;
  final String shares;
  final String? description;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            'Posted by ${widget.author}',
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Image.asset(widget.imagePath),
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              TextButton.icon(
                onPressed: () {},
                label: Text(widget.likes),
                icon: const Icon(Icons.favorite_outline),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text(widget.comments),
                icon: const Icon(Icons.chat_bubble_outline),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text(widget.shares),
                icon: const Icon(Icons.share_outlined),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text('Read more'),
                icon: const Icon(Icons.read_more_outlined),
              ),
            ],
          ),
        ),
        if (widget.description != null)
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Text(widget.description!),
          ),
      ],
    );
  }
}
