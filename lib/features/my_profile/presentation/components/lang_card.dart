import 'package:edit_profile/core/utils/app_router.dart';
import 'package:edit_profile/core/utils/colors.dart';
import 'package:edit_profile/core/utils/strings.dart';
import 'package:edit_profile/features/my_profile/presentation/components/custom_line.dart';
import 'package:edit_profile/features/my_profile/presentation/components/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LangCard extends StatefulWidget {
  const LangCard({
    super.key,
  });

  @override
  State<LangCard> createState() => _LangCardState();
}

class _LangCardState extends State<LangCard> {
  String _selectedValue = AppString.english;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color:  AppColors.kBlack54, width: 1),
          borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            CustomRow(
              icon: Icons.language,
              text: AppString.language,
              child: Expanded(
                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.05,
                  width: MediaQuery.sizeOf(context).width*0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.kGray, width: 1)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _selectedValue,
                      items: <String>[AppString.english, AppString.arabic].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Center(child: Text(value)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          _selectedValue = value!;
                        });
                      },
                      icon: const Icon(Icons.keyboard_arrow_down),
                      style: const TextStyle(
                        color: AppColors.kBlue,
                        fontFamily: AppString.rubikFont,
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                      ),
                      isExpanded: true,
                    ),
                  ),
                ),
              ),
            ),
            const CustomLine(),
            CustomRow(
              icon: Icons.create_rounded,
              text: AppString.editProfile,
              child: IconButton(
                icon: const Icon(
                  Icons.mode_edit_rounded,
                  color: AppColors.kBlue,
                  size: 35,
                  // size: 25,
                ),
                onPressed: () {context.go(AppRouter.kEditProfileScreen);},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
