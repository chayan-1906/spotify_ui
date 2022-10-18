import 'package:flutter/material.dart';
import 'package:spotify_ui/data/data.dart';

import '../widgets/side_menu.dart';
import 'playlist_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                SideMenu(),
                Expanded(child: PlaylistScreen(playlist: lofihiphopPlaylist)),
              ],
            ),
          ),
          Container(
            height: 84.0,
            width: double.infinity,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
