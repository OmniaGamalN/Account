import 'package:edit_profile/core/utils/colors.dart';
import 'package:edit_profile/core/utils/strings.dart';
import 'package:flutter/cupertino.dart';

class CustomRow extends StatelessWidget {
  const CustomRow(
      {super.key, required this.icon, required this.text, this.child, this.color=AppColors.kBlue,  this.textColor=AppColors.kBlack});
  final IconData icon;
  final String text;
  final Widget? child;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration:  BoxDecoration(
              color: color, shape: BoxShape.circle),
          child: Icon(
            icon,
            size: 27,
            color: AppColors.kWhite,
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.03,
        ),
        Expanded(
          child: Text(
            text,
            style:  TextStyle(
                fontSize: 17,
              fontFamily: AppString.rubikFont,
              fontWeight: FontWeight.w600,
              color: textColor
            ),
          ),
        ),
        if (child != null) ...[const Spacer(), child!]
      ],
    );
  }
}
