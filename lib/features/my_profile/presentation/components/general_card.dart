import 'package:edit_profile/core/utils/colors.dart';
import 'package:edit_profile/core/utils/strings.dart';
import 'package:edit_profile/features/my_profile/presentation/components/custom_line.dart';
import 'package:edit_profile/features/my_profile/presentation/components/custom_row.dart';
import 'package:flutter/material.dart';

class GeneralCard extends StatelessWidget {
  const GeneralCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color:  AppColors.kBlack54, width: 1),
          borderRadius: BorderRadius.circular(10.0)),
      child:   const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            CustomRow(
                icon: Icons.list_alt,
                text: AppString.termsAndConditions),
            CustomLine(),
            CustomRow(
                icon: Icons.privacy_tip_outlined,
                text: AppString.privacyPolicy),
            CustomLine(),
            CustomRow(
                icon: Icons.error_outline,
                text: AppString.aboutUs),
            CustomLine(),
            CustomRow(
                icon: Icons.question_answer_outlined,
                text: AppString.fAQs),

          ],

        ),
      ),
    );
  }
}
