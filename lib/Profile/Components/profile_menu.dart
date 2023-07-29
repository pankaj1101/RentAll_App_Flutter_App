import 'package:flutter/material.dart';
import 'package:rentall/config/color.dart';

class ProfileMenu extends StatelessWidget {
  final String text, textData;
  final IconData icon;
  final VoidCallback? press;

  const ProfileMenu({
    Key? key,
    required this.text,
    this.press,
    required this.textData,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: const Color(0xFFF5F6F9),
          // backgroundColor: const Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColor.primaryColor,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(color: AppColor.primaryColor),
              ),
            ),
            Text(
              textData,
              style: const TextStyle(color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
