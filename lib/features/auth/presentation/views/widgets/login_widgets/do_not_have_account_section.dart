import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/auth/presentation/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoNotHaveAccountSection extends StatelessWidget {
  const DoNotHaveAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          'Don’t have an account?',
          style: Styles.styleLight12(context).copyWith(fontSize: 12),
        ),
        const SizedBox(
          width: 4,
        ),
        GestureDetector(
          onTap: () => context.navigateReplace(
            BlocProvider.value(
              value: context.authCubit,
              child: const RegisterView(),
            ),
          ),
          child: CustomText(
            'Create Account',
            style: Styles.styleLight12(
              context,
            ).copyWith(fontSize: 12, color: AppColors.lightThemePrimaryColor),
          ),
        ),
      ],
    );
  }
}
