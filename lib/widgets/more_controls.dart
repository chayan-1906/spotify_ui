import 'package:flutter/material.dart';

class MoreControls extends StatelessWidget {
  const MoreControls({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          iconSize: 20.0,
          icon: const Icon(Icons.devices_outlined),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.volume_up_outlined),
            ),
            Container(
              height: 5.0,
              width: 70.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          iconSize: 20.0,
          icon: const Icon(Icons.fullscreen_outlined),
        ),
      ],
    );
  }
}
