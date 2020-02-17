import 'package:flutter/material.dart';

import 'bb_args.dart';

Widget sliverGrid<T>({
  EdgeInsetsGeometry padding = defaultMargin,
  List<T> items,
  int max,
  double aspectRatio = 1.0,
  double lineSpacing = 8.0,
  double interitemSpacing = 8.0,
  Widget Function(BuildContext, T) itemBuilder,
}) {
  return padding != EdgeInsets.zero
      ? SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin.left),
          sliver: _sliverGrid(
            items: items,
            max: max,
            aspectRatio: aspectRatio,
            lineSpacing: lineSpacing,
            interitemSpacing: interitemSpacing,
            itemBuilder: itemBuilder,
          ))
      : _sliverGrid(
          items: items,
          max: max,
          aspectRatio: aspectRatio,
          lineSpacing: lineSpacing,
          interitemSpacing: interitemSpacing,
          itemBuilder: itemBuilder,
        );
}

Widget _sliverGrid<T>({
  List<T> items,
  int max,
  double aspectRatio,
  double lineSpacing,
  double interitemSpacing,
  Widget Function(BuildContext, T) itemBuilder,
}) {
  return SliverGrid(
    delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return itemBuilder(context, items[index]);
      },
      childCount: items?.length ?? 0,
    ),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: max,
      childAspectRatio: aspectRatio,
      mainAxisSpacing: lineSpacing,
      crossAxisSpacing: interitemSpacing,
    ),
  );
}
