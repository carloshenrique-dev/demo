import 'package:demo/core/ui/colors.dart';
import 'package:flutter/material.dart';

class UserContainer extends StatelessWidget {
  final String userName;
  final String userDetail;

  const UserContainer({
    super.key,
    required this.userName,
    required this.userDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: const [
            CircleAvatar(
              backgroundColor: AppColors.grey,
              radius: 40,
              child: Icon(
                Icons.person,
                color: AppColors.black,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.settings,
                size: 35,
                color: AppColors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          userName,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          userDetail,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
