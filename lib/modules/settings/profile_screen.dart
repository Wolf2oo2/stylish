import 'package:flutter/material.dart';
import 'package:stylish/widgets/custom_profile_listTile.dart';

class ProfileScreen extends StatelessWidget {
  static const String screenRoute = '/profile_Screen';

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Color(0xff090F24),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xff2918F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_outlined),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 48,width: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(color: Colors.black,splashColor: Colors.transparent,highlightColor: Colors.transparent,
                onPressed: () {},
                icon: Icon(Icons.edit),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.all(20),
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(100),
                  child: const Image(
                    image: AssetImage('images/app_logo.png'),
                  )),
            ),
            const SizedBox(height: 10),
            const Text(
              'Waseem Saeed',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            CustomProfileListTile(
              title: 'My Profile',
              leading: Icons.account_circle_outlined,
              trailing: Icons.arrow_forward_ios_outlined,
              onPress: () {},
            ),
            CustomProfileListTile(
              title: 'My Address',
              leading: Icons.location_on_outlined,
              trailing: Icons.arrow_forward_ios_outlined,
              onPress: () {},
            ),
            CustomProfileListTile(
              title: 'Notification',
              leading: Icons.notifications_on_outlined,
              trailing: Icons.arrow_forward_ios_outlined,
              onPress: () {},
            ),
            CustomProfileListTile(
              title: 'Help Center',
              leading: Icons.verified_user_outlined,
              trailing: Icons.arrow_forward_ios_outlined,
              onPress: () {},
            ),
            const CustomProfileListTile(
              title: 'Logout',
              leading: Icons.logout_outlined,
              marginBottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}
