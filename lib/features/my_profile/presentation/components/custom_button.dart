import 'package:edit_profile/core/utils/colors.dart';
import 'package:edit_profile/features/my_profile/presentation/components/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text, this.color=AppColors.kBlack, required this.icon,
  });
  final String text;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kWhite,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(
                  color:  AppColors.kBlack54,
                  width: 1
              )
          ),
          minimumSize: const Size(double.infinity, 65)
      ),

      child:  CustomRow(
        icon: icon,
        text: text,
        color: AppColors.kRed,
        textColor: color,
      ),
    );
  }
}
