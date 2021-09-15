import 'package:flutter/material.dart';
import 'package:test_reqelford/widgets/list_tile_drawer.dart';

class ListExpandedTileView extends StatelessWidget {
  final Icon icon1;
  final String title;
  final Column expansionListTile;

   ListExpandedTileView({ @required this.icon1, @required this.title, @required this.expansionListTile});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing: icon1,

      title: Text(title),

      children: [
        expansionListTile,

      ],
    );
  }
}

// stores ExpansionPanel state information
