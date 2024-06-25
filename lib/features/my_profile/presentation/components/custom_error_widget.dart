import 'package:edit_profile/core/utils/colors.dart';
import 'package:edit_profile/core/utils/strings.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: const TextStyle(
            color: AppColors.kRed,
            fontFamily: AppString.rubikFont,
            fontSize: 20),
      ),
    );
  }
}
