import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class GridviewUi extends StatelessWidget {
  const GridviewUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: staggeredGridViewDemo(),
      ),
    );
  }

  Widget staggeredGridViewDemo() {
    const List<StaggeredTile> staggeredTiles = <StaggeredTile>[
      StaggeredTile.count(2, 2),
      StaggeredTile.count(2, 1),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(2, 2),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(3, 1),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(4, 1),
      StaggeredTile.count(2, 2),
      StaggeredTile.count(2, 1),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(2, 2),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1),
    ];

    const List<Widget> tiles = <Widget>[
      ListItems(Colors.green),
      ListItems(Colors.yellow),
      ListItems(Colors.lightBlue),
      ListItems(Colors.amber),
      ListItems(Colors.brown),
      ListItems(Colors.indigo),
      ListItems(Colors.pink),
      ListItems(Colors.blue),
      ListItems(Colors.deepOrange),
      ListItems(Colors.green),
      ListItems(Colors.yellow),
      ListItems(Colors.lightBlue),
      ListItems(Colors.amber),
      ListItems(Colors.brown),
      ListItems(Colors.indigo),
      ListItems(Colors.pink),
      ListItems(Colors.blue),
      ListItems(Colors.deepOrange),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      child: StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: staggeredTiles,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        padding: EdgeInsets.all(
          4.spMax,
        ),
        children: tiles,
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  final Color backgroundColor;

  const ListItems(this.backgroundColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
    );
  }
}
