import 'package:flutter/material.dart';

class PlaylistButtons extends StatelessWidget {
  final String followers;

  const PlaylistButtons({Key key, @required this.followers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).iconTheme.color,
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 48.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            backgroundColor: Theme.of(context).colorScheme.secondary,
            textStyle: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontSize: 12.0, letterSpacing: 2.0),
          ),
          child: const Text('PLAY'),
        ),
        const SizedBox(width: 8.0),
        IconButton(
          onPressed: () {},
          iconSize: 30.0,
          icon: const Icon(Icons.favorite_border_rounded),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 30.0,
          icon: const Icon(Icons.more_horiz_rounded),
        ),
        const Spacer(),
        Text(
          'FOLLOWERS\n$followers',
          textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.overline.copyWith(fontSize: 12.0),
        ),
      ],
    );
  }
}
