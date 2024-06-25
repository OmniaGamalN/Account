import 'package:edit_profile/core/utils/colors.dart';
import 'package:edit_profile/core/utils/strings.dart';
import 'package:edit_profile/features/my_profile/presentation/components/bottom_nav_bar.dart';
import 'package:edit_profile/features/my_profile/presentation/components/custom_appbar.dart';
import 'package:edit_profile/features/my_profile/presentation/components/custom_button.dart';
import 'package:edit_profile/features/my_profile/presentation/components/general_card.dart';
import 'package:edit_profile/features/my_profile/presentation/components/info_row.dart';
import 'package:edit_profile/features/my_profile/presentation/components/lang_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body:

      Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppbar(text: AppString.myAccount,),
              const InfoRow(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              const LangCard(),
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppString.general,
                    style: TextStyle(color: AppColors.kBlack54, fontSize: 20),
                  ),
                ),
              ),
              const GeneralCard(),
              const SizedBox(
                height: 10,
              ),
               Row(
                children: [
                  Expanded(
                      child: CustomButton(
                        text: AppString.logOut,
                        icon: Icons.power_settings_new,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: CustomButton(
                        text: AppString.deleteAccount,
                        color: AppColors.kRed,
                        icon: Icons.delete_rounded,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
