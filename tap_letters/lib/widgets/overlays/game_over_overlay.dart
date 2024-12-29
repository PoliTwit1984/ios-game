import 'package:flutter/material.dart';
import '../../constants/theme_constants.dart';

class GameOverOverlay extends StatelessWidget {
  final int finalScore;
  final int level;
  final VoidCallback onRestart;

  const GameOverOverlay({
    super.key,
    required this.finalScore,
    required this.level,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(32.0),
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Game Over',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Final Score: $finalScore',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Level Reached: $level',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: onRestart,
                style: ElevatedButton.styleFrom(
                  backgroundColor: ThemeConstants.primaryColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Play Again',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
