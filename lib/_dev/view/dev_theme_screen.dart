import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/_dev/widgets/dev_screen_layout.dart';

class DevThemeScreen extends StatelessWidget {
  const DevThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevScreenLayout('Theme',
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
        children: []);
  }
}
