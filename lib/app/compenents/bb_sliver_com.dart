import 'package:flutter/material.dart';

Widget sliverGrid<T>({
  EdgeInsetsGeometry padding = EdgeInsets.zero,
  List<T> items,
  int crossAxisCount,
  double aspectRatio = 1.0,
  double lineSpacing = 8.0,
  double interitemSpacing = 8.0,
  Widget Function(BuildContext, T) itemBuilder,
}) {
  return padding != EdgeInsets.zero
      ? SliverPadding(
          padding: padding,
          sliver: _sliverGrid(
            items: items,
            crossAxisCount: crossAxisCount,
            aspectRatio: aspectRatio,
            lineSpacing: lineSpacing,
            interitemSpacing: interitemSpacing,
            itemBuilder: itemBuilder,
          ))
      : _sliverGrid(
          items: items,
          crossAxisCount: crossAxisCount,
          aspectRatio: aspectRatio,
          lineSpacing: lineSpacing,
          interitemSpacing: interitemSpacing,
          itemBuilder: itemBuilder,
        );
}

Widget _sliverGrid<T>({
  List<T> items,
  int crossAxisCount,
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
      crossAxisCount: crossAxisCount,
      childAspectRatio: aspectRatio,
      mainAxisSpacing: lineSpacing,
      crossAxisSpacing: interitemSpacing,
    ),
  );
}

Widget boxAdapter({EdgeInsetsGeometry padding = EdgeInsets.zero, Widget child}) {
  return SliverToBoxAdapter(
    child: padding != EdgeInsets.zero
        ? Padding(
            padding: padding,
            child: child,
          )
        : child,
  );
}
