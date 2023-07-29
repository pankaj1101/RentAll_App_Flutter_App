import 'package:flutter/material.dart';
import 'package:rentall/Profile/Components/profile_menu.dart';
import 'package:rentall/Profile/Components/profile_pic.dart';
import 'package:rentall/config/color.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColor.primaryColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: AppColor.primaryColor),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "User ID",
              icon: Icons.verified_user_outlined,
              textData: '965874',
              press: () => {},
            ),
            ProfileMenu(
              text: "Employee Code",
              icon: Icons.emoji_people_outlined,
              textData: '102',
              press: () {},
            ),
            ProfileMenu(
              text: "D.O.B",
              icon: Icons.date_range_rounded,
              textData: '10-Feb-2022',
              press: () {},
            ),
            ProfileMenu(
              text: "Age",
              icon: Icons.auto_fix_high_outlined,
              textData: '22',
              press: () {},
            ),
            ProfileMenu(
              text: "Email ID",
              icon: Icons.email_outlined,
              textData: 'demo@gmail.com',
              press: () {},
            ),
            ProfileMenu(
              text: "Mobile No.",
              icon: Icons.numbers,
              textData: '9898989898',
              press: () {},
            ),
            ProfileMenu(
              text: "Corporate Name",
              icon: Icons.corporate_fare_rounded,
              textData: 'Demo Corporate',
              press: () {},
            ),
            ProfileMenu(
              text: "Address",
              icon: Icons.location_pin,
              textData: 'Mumbai',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
