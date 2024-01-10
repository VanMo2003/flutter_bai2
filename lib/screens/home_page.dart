import 'package:flutter/material.dart';

import '../helper/dialog_sign_out.dart';
import '../helper/switch_light_dark.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/van_mo.jpg'),
                radius: 80,
              ),
              const SizedBox(height: 20),
              Text(
                'Phạm Xuân Văn',
                style: TextStyle(
                  fontSize: 32,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'mjnhhuyen0@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const SwitchHelper(),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  showDialogSignOut(context);
                },
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(0.0),
                  backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.background,
                  ),
                ),
                child: Text(
                  'Đăng xuất',
                  style: TextStyle(
                    fontSize: 24,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
