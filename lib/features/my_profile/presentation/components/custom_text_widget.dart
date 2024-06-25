import 'package:edit_profile/core/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: EdgeInsets.only(top:10 ,bottom: 10),
          child: Text(
            text,
            style: const TextStyle(color: AppColors.kBlack54,fontSize: 17,fontWeight: FontWeight.bold),

          ),
        ));
  }
}
