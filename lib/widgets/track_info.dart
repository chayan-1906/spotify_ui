import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_ui/models/current_track_model.dart';

import '../data/data.dart';

class TrackInfo extends StatelessWidget {
  const TrackInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Song selected = context.watch<CurrentTrackModel>().selected;
    if (selected == null) return const SizedBox.shrink();

    return Row(
      children: [
        Image.asset(
          'assets/images/lofigirl.jpg',
          height: 60.0,
          width: 60.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(selected.title, style: Theme.of(context).textTheme.bodyText1),
            const SizedBox(height: 4.0),
            Text(
              selected.artist,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.grey.shade300, fontSize: 12.0),
            ),
          ],
        ),
        const SizedBox(width: 12.0),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border_rounded),
        ),
      ],
    );
  }
}
