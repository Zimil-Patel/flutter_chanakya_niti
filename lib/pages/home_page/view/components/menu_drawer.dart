import 'package:flutter/material.dart';

import 'drawer_items.dart';
import 'drawer_top.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: const Column(
        children: [

          // drawer top profile
          DrawerTop(),


          // Drawer items
          DrawerItems(),
        ],
      ),
    );
  }
}