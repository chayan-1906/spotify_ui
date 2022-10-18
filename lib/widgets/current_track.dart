import 'package:flutter/material.dart';

import 'more_controls.dart';
import 'player_controls.dart';
import 'track_info.dart';

class CurrentTrack extends StatelessWidget {
  const CurrentTrack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.0,
      width: double.infinity,
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const TrackInfo(),
            const Spacer(),
            const PlayerControls(),
            const Spacer(),
            if (MediaQuery.of(context).size.width > 800) const MoreControls(),
          ],
        ),
      ),
    );
  }
}
