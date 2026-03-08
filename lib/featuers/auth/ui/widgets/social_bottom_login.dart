import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String imagePath;
  final String? label;
  final VoidCallback? onTap;

  const SocialLoginButton({
    super.key,
    required this.imagePath,
    this.onTap,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE8ECF4)),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 24, height: 24),
            if (label != null) ...[
              const SizedBox(width: 12),
              Text(
                label!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1E232C),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
