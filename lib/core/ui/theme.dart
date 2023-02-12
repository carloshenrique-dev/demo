import 'package:demo/core/ui/colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static final theme = ThemeData(
    primarySwatch: Colors.blue,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      backgroundColor: AppColors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.black,
      unselectedIconTheme: IconThemeData(
        color: AppColors.strongGrey,
      ),
    ),
  );
}
