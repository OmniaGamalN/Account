import 'package:edit_profile/core/utils/colors.dart';
import 'package:edit_profile/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.35),
          Text(
            text,
            style: const TextStyle(
                color: AppColors.kBlue,
                fontSize: 20,
                fontWeight: FontWeight.w800,
                fontFamily: AppString.rubikFont),
          ),
          const Spacer(),
          IconButton(
            onPressed: () =>context.go('/'),
            color: AppColors.kBlack,
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          )
        ],
      ),
    );
  }
}
