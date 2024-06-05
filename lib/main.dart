import 'package:flutter/material.dart';
import 'package:ui_common/ui_common.dart';

import 'core/theme/theme.dart';
import 'features/home/home.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context,_) {
        return MaterialApp(
          title: 'Parallax Effect',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.dark,
          home: const HomePage(),
        );
      }
    );
  }
}
