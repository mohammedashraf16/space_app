import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_app/app_colors.dart';
import 'package:space_app/profile/arrow_icon.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 15),
            CircleAvatar(
              backgroundColor: AppColors.whiteColor,
              radius: 60,
              child: Text(
                'pic',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            SizedBox(height: 10),
            Text('Sara Atef', style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 5),
            Text('@Sara_Atef', style: Theme.of(context).textTheme.bodySmall),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.transperantwhiteColor,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              ),
              onPressed: () {},
              child: Text(
                'Edit Profile',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 30),


            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: AppColors.whiteColor,
                    size: 28,
                  ),
                  title: Text(
                    "Settings",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  trailing: ArrowIcon(direction: true, onTap: () {}),
                ),

                ListTile(
                  leading: Icon(
                    Icons.key,
                    color: AppColors.whiteColor,
                    size: 28,
                  ),
                  title: Text(
                    "Password",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  trailing: ArrowIcon(direction: true, onTap: () {}),
                ),

                ListTile(
                  leading: Icon(
                    Icons.logout_outlined,
                    color: AppColors.whiteColor,
                    size: 28,
                  ),
                  title: Text(
                    "Logout",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  trailing: ArrowIcon(direction: true, onTap: () {}),
                ),
              ],
            ),
            SizedBox(height: 30), // Space at the bottom of the ListTile section
          ],
        ),
      ),
    );
  }
}



