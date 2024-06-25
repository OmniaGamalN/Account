import 'package:edit_profile/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 8,bottom: 8),
      child: Container(
        height: 1,
        width: double.infinity,
        color: AppColors.kBlack54
      ),
    );
  }
}
