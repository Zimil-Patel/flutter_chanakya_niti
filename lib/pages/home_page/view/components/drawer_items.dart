import 'package:flutter/material.dart';
import 'package:flutter_chanakya_niti/controller/theme_provider.dart';
import 'package:flutter_chanakya_niti/utils/constants.dart';
import 'package:provider/provider.dart';


class DrawerItems extends StatelessWidget {
  const DrawerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DrawersListTile(
          icon: Icons.nightlight,
          lable: 'Dark Theme',
          showSwitch: true,
        ),
        DrawersListTile(icon: Icons.favorite, lable: 'Favourites'),
        DrawersListTile(icon: Icons.book, lable: 'Bookmarks'),
        DrawersListTile(icon: Icons.language, lable: 'Language'),
      ],
    );
  }
}

class DrawersListTile extends StatelessWidget {
  const DrawersListTile({
    super.key, required this.lable, required this.icon, this.showSwitch = false,
  });


  final String lable;
  final IconData icon;
  final bool showSwitch;

  @override
  Widget build(BuildContext context) {
    // theme providers
    final themeProviderT = context.watch<ThemeProvider>();
    final themeProviderF = context.read<ThemeProvider>();
    return ListTile(
      trailing: showSwitch ? Switch(
        trackOutlineColor: const WidgetStatePropertyAll(primaryColor),
        thumbColor: const WidgetStatePropertyAll(primaryColor),
        activeTrackColor: Colors.black,
        activeColor: Colors.black,
        value: themeProviderT.isDark,
        onChanged: (value) {
          themeProviderF.changeThemePreference();
        },
      ) : null,
      leading: Icon(icon, color: primaryColor,),
      title: Text(lable, style: Theme.of(context).textTheme.titleMedium,),
    );
  }
}
