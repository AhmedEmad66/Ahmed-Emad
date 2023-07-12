import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.title,
    required this.description,
    required this.onPressed,
    required this.btnTitle,
  });
  final String title;
  final String description;
  final VoidCallback onPressed;
  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: title,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: description,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onPressed,
            child: Text(btnTitle),
          ),
        ],
      ),
    );
  }
}
