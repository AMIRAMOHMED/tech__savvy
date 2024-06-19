import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/features/onboarding/logic/cubit/onboarding_cubit.dart';

class Indicator extends StatelessWidget {
  const Indicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, int>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            final isActive = state == index;

            return Container(
              margin: const EdgeInsets.all(4),
              width: isActive ? 28.0 : 9.0,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: isActive ? context.color.blueColor : Colors.grey,
              ),
            );
          }),
        );
      },
    );
  }
}
