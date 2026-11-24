import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../widgets/ui_parts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 245,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset('assets/images/blush_flower_texture.png', fit: BoxFit.cover),
                          Container(color: const Color(0x859D4E49)),
                          const Positioned(
                            left: 25,
                            bottom: 24,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('blush.',
                                    style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w900)),
                                SizedBox(height: 5),
                                Text('Your daily soft space for mindful reflection.',
                                    style: TextStyle(color: Colors.white70, fontSize: 13)),
                              ],
                            ),
                          ),
                          const Positioned(
                            left: 25,
                            bottom: 78,
                            child: CircleAvatar(
                              radius: 19,
                              backgroundColor: AppColors.blush,
                              child: Icon(Icons.favorite_border, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 38, 25, 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const BlushTextField(label: 'Email Address', hint: 'hello@blushmind.com', icon: Icons.email_outlined),
                          const SizedBox(height: 18),
                          const BlushTextField(label: 'Password', hint: 'Enter password', icon: Icons.lock_outline, obscure: true),
                          const SizedBox(height: 13),
                          const Row(
                            children: [
                              Icon(Icons.check_box, color: AppColors.blush, size: 19),
                              SizedBox(width: 7),
                              Text('Keep me signed in', style: TextStyle(color: AppColors.muted, fontSize: 12)),
                              Spacer(),
                              Text('Forgot Password?', style: TextStyle(color: AppColors.blush, fontSize: 12, fontWeight: FontWeight.w600)),
                            ],
                          ),
                          const SizedBox(height: 22),
                          const BlushButton(label: 'Sign In  →'),
                          const SizedBox(height: 25),
                          const Center(child: Text('New to blush?  Create an account', style: TextStyle(color: AppColors.muted, fontSize: 12))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
