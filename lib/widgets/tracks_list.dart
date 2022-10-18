import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_ui/models/current_track_model.dart';

import '../data/data.dart';

class TracksList extends StatelessWidget {
  final List<Song> tracks;

  const TracksList({Key key, @required this.tracks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingTextStyle:
          Theme.of(context).textTheme.overline.copyWith(fontSize: 12.0),
      dataRowHeight: 54.0,
      showCheckboxColumn: false,
      columns: const [
        DataColumn(label: Text('TITLE')),
        DataColumn(label: Text('ARTIST')),
        DataColumn(label: Text('ALBUM')),
        DataColumn(label: Icon(Icons.access_time_rounded)),
      ],
      rows: tracks.map((e) {
        final bool selected =
            context.watch<CurrentTrackModel>().selected?.id == e.id;
        final TextStyle textStyle = TextStyle(
          color: selected
              ? Theme.of(context).accentColor
              : Theme.of(context).iconTheme.color,
        );

        return DataRow(
          cells: [
            /// title
            DataCell(Text(e.title, style: textStyle)),

            /// artist
            DataCell(Text(e.artist, style: textStyle)),

            /// album
            DataCell(Text(e.album, style: textStyle)),

            /// duration
            DataCell(Text(e.duration, style: textStyle)),
          ],
          selected: selected,
          onSelectChanged: (_) =>
              context.read<CurrentTrackModel>().selectTrack(e),
        );
      }).toList(),
    );
  }
}
