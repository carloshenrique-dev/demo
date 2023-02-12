import 'package:demo/core/ui/colors.dart';
import 'package:flutter/material.dart';

class PauseFeedCard extends StatelessWidget {
  const PauseFeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.pause,
            size: 26,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Pause feed',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
