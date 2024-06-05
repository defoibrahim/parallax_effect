import 'package:flutter/material.dart';
import 'package:parallax_effect/core/theme/theme.dart';
import 'package:ui_common/ui_common.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: AppColorScheme.backgroundColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.white54,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: SizedBox(height: 1.r, width: double.infinity),
    );
  }
}
