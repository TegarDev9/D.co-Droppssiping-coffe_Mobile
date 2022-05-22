import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_register/shared/shared.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawwerScreenState createState() => _DrawwerScreenState();
}

class _DrawwerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: primaryColor,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("D.O Kyungsoo"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/People.png",
                ),
              ),
              accountEmail: Text("@kyungsoo_ya"),
            ),
            DrawerListTile(
              iconData: Icons.group_sharp,
              title: "Profile",
              onTilePressed: () {},
            ),
            DrawerListTile(
              iconData: Icons.transfer_within_a_station,
              title: "Transaction",
              onTilePressed: () {},
            ),
            DrawerListTile(
              iconData: Icons.contacts,
              title: "Notification",
              onTilePressed: () {},
            ),
            DrawerListTile(
              iconData: Icons.bookmark_border,
              title: "Favorites",
              onTilePressed: () {},
            ),
            DrawerListTile(
                iconData: Icons.phone, title: "Settings", onTilePressed: () {}),
            SizedBox(
              height: 5,
              width: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/Exit_Button.png',
                  width: 24,
                ),
                Text(
                  'Sign out',
                  style: Signout2,
                ),
              ],
            ),
          ],
        ));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePressed;

  const DrawerListTile(
      {Key? key, this.iconData, this.title, this.onTilePressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
