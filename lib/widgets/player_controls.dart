import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/data.dart';
import '../models/current_track_model.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Song selected = context.watch<CurrentTrackModel>().selected;
    if (selected == null) return const SizedBox.shrink();

    return Column(
      children: [
        Row(
          children: [
            /// shuffle
            IconButton(
              onPressed: () {},
              iconSize: 20.0,
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.shuffle_rounded),
            ),

            /// skip previous
            IconButton(
              onPressed: () {},
              iconSize: 20.0,
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.skip_previous_outlined),
            ),

            /// play circle
            IconButton(
              onPressed: () {},
              iconSize: 34.0,
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.play_circle_outlined),
            ),

            /// skip next
            IconButton(
              onPressed: () {},
              iconSize: 20.0,
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.skip_next_outlined),
            ),

            /// repeat
            IconButton(
              onPressed: () {},
              iconSize: 20.0,
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.repeat_rounded),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Row(
          children: [
            Text('0:00', style: Theme.of(context).textTheme.caption),
            const SizedBox(width: 8.0),
            Container(
              height: 5.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              selected.duration ?? '0:00',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ],
    );
  }
}
