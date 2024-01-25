import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'ui/pages/demo_page/demo_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: DemoPage(),
        );
      },
    );
  }
}
