import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class BlushTextField extends StatelessWidget {
  const BlushTextField({
    required this.label,
    required this.hint,
    required this.icon,
    this.obscure = false,
    super.key,
  });

  final String label;
  final String hint;
  final IconData icon;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: AppColors.ink)),
        const SizedBox(height: 7),
        Container(
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: .70),
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: AppColors.line),
          ),
          child: Row(
            children: [
              const SizedBox(width: 14),
              Icon(icon, size: 19, color: AppColors.muted),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  hint,
                  style: const TextStyle(color: Color(0xFFA99599), fontSize: 13),
                ),
              ),
              if (obscure) ...[
                const Icon(Icons.visibility_off_outlined,
                    size: 19, color: AppColors.muted),
                const SizedBox(width: 13),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class BlushButton extends StatelessWidget {
  const BlushButton({required this.label, super.key});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.blush,
        borderRadius: BorderRadius.circular(28),
        boxShadow: const [
          BoxShadow(color: Color(0x2EED5A75), blurRadius: 16, offset: Offset(0, 7)),
        ],
      ),
      child: Text(label,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}
