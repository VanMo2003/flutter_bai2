import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../theme/theme_provider.dart';

class SwitchHelper extends StatefulWidget {
  const SwitchHelper({super.key});

  @override
  State<SwitchHelper> createState() => _SwitchHelperState();
}

class _SwitchHelperState extends State<SwitchHelper> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            !isDark ? 'Light' : 'Dark',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 18,
                color: Theme.of(context).colorScheme.primary),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        FlutterSwitch(
          width: 60.0,
          height: 35.0,
          toggleSize: 25.0,
          value: isDark,
          borderRadius: 30.0,
          padding: 2.0,
          activeToggleColor: const Color(0xFF6E40C9), // bgrIcon khi true
          inactiveToggleColor: const Color(0xFF2F363D), // bgrIcon khi false
          activeSwitchBorder: Border.all(
            color: const Color(0xFF3C1E70), // border true
            width: 4.0,
          ),
          inactiveSwitchBorder: Border.all(
            color: const Color(0xFFD1D5DA), // border false
            width: 4.0,
          ),
          activeColor: const Color(0xFF271052), // nền true
          inactiveColor: Colors.white, // nề false
          activeIcon: const Icon(
            Icons.nightlight_round,
            color: Color(0xFFF8E3A1),
          ),
          inactiveIcon: const Icon(
            Icons.wb_sunny,
            color: Color(0xFFFFDF5D),
          ),
          onToggle: (val) {
            setState(() {
              if (isDark) {
                isDark = false;
              } else {
                isDark = true;
              }
            });
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          },
        ),
      ],
    );
  }
}
