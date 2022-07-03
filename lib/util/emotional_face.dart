import 'package:flutter/material.dart';

class EmotionalFace extends StatelessWidget {
  final String emotionalFace;
  const EmotionalFace({
    Key? key,
    required this.emotionalFace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          emotionalFace,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
