import 'package:flutter/material.dart';
import 'package:rentall/config/color.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppColor.primaryColor,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: CircleAvatar(
              backgroundColor: Color(0xFFF5F6F9),
              child: Image.asset(
                'assets/logo/profile_image.png',
                color: AppColor.primaryColor,
              ),
            ),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 42,
              width: 42,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  // primary: Colors.white,
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Icon(Icons.camera_alt),
              ),
            ),
          )
        ],
      ),
    );
  }
}
