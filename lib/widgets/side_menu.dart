import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/side_menu_icon_tab.dart';

import 'library_playlists.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 250.0,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/images/spotify_logo.png',
                  height: 55.0,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ],
          ),

          /// home
          SideMenuIconTab(
            iconData: Icons.home_rounded,
            title: 'Home',
            onTap: () {},
          ),

          /// search
          SideMenuIconTab(
            iconData: Icons.search_rounded,
            title: 'Search',
            onTap: () {},
          ),

          /// audio track
          SideMenuIconTab(
            iconData: Icons.audiotrack_rounded,
            title: 'Radio',
            onTap: () {},
          ),

          const SizedBox(height: 12.0),
          const LibraryPlaylists(),
        ],
      ),
    );
  }
}
