import 'package:flutter/material.dart';

class Featureswidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final bool ismobile;

  const Featureswidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.ismobile = false,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
      height: h / 5.5,
      width: ismobile ? w / 1 : w / 3.0,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, size: 50),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
