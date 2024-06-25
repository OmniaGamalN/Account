import 'package:edit_profile/core/utils/colors.dart';
import 'package:edit_profile/core/utils/strings.dart';
import 'package:edit_profile/features/my_profile/presentation/components/custom_error_widget.dart';
import 'package:edit_profile/features/my_profile/presentation/components/custom_loading_indecator.dart';
import 'package:edit_profile/features/my_profile/presentation/controller/account_info_cubit.dart';
import 'package:edit_profile/features/my_profile/presentation/controller/account_info_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfoRow extends StatefulWidget {
  const InfoRow({
    super.key,
  });

  @override
  State<InfoRow> createState() => _InfoRowState();
}

class _InfoRowState extends State<InfoRow> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AccountInfoCubit>().getAccountInfo();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountInfoCubit, AccountInfoState>(
        builder: (context, state) {
      if (state is AccountInfoSuccessState) {
        return Row(
          children: [
            CircleAvatar(
              foregroundImage: NetworkImage(state.accountInfo.picturePath!),
              radius: 50,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.accountInfo.user!.arName!,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        fontFamily: AppString.rubikFont),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    state.accountInfo.user!.accountEmail!,
                    style: TextStyle(
                        fontSize: 15,
                        color: AppColors.kBlack54,
                        fontFamily: AppString.rubikFont),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    state.accountInfo.enGrade!,
                    style: TextStyle(
                        fontSize: 15,
                        color: AppColors.kBlack54,
                        fontFamily: AppString.rubikFont),
                  )
                ],
              ),
            )
          ],
        );
      } else if (state is AccountInfoFailureState) {
        return CustomErrorWidget(errorMessage: state.message);
      } else {
        return CustomLoadingIndicator();
      }
    });
  }
}
