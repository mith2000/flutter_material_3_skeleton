import 'package:flutter/material.dart';

const borderRadius = 12.0;

class BoxPlaceholder extends StatelessWidget {
  const BoxPlaceholder({
    super.key,
    this.width,
    this.height = 200.0,
    this.horizontalPadding = 16.0,
  });

  final double? width;
  final double height;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        width: width ?? double.infinity,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Colors.white,
        ),
      ),
    );
  }
}

class TitlePlaceholder extends StatelessWidget {
  const TitlePlaceholder({
    super.key,
    this.width,
    this.perLineHeight = 12.0,
    this.horizontalPadding = 16.0,
    this.spacing = 8.0,
  });

  final double? width;
  final double perLineHeight;
  final double horizontalPadding;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width ?? double.infinity,
            height: perLineHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: Colors.white,
            ),
          ),
          SizedBox(height: spacing),
          Container(
            width: width ?? double.infinity,
            height: perLineHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

enum ListTileType {
  twoLines,
  threeLines,
}

class ListTilePlaceholder extends StatelessWidget {
  const ListTilePlaceholder({
    super.key,
    required this.lineType,
    this.hasLeading = true,
    this.horizontalPadding = 16.0,
    this.leadingSize = 72.0,
    this.spacing = 12.0,
  });

  final ListTileType lineType;
  final bool hasLeading;
  final double horizontalPadding;
  final double leadingSize;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (hasLeading)
            Container(
              width: leadingSize,
              height: leadingSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                color: Colors.white,
              ),
            ),
          if (hasLeading) SizedBox(width: spacing),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 10.0,
                  margin: const EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    color: Colors.white,
                  ),
                ),
                if (lineType == ListTileType.threeLines)
                  Container(
                    width: double.infinity,
                    height: 10.0,
                    margin: const EdgeInsets.only(bottom: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: Colors.white,
                    ),
                  ),
                Container(
                  width: 100.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardPlaceholder extends StatelessWidget {
  const CardPlaceholder({
    super.key,
    this.hasLineBelow = true,
    this.horizontalPadding = 16.0,
    this.height = 72.0,
    this.width,
    this.spacing = 8.0,
    this.lineWidth = 100.0,
  });

  final bool hasLineBelow;
  final double horizontalPadding;
  final double height;
  final double? width;
  final double spacing;
  final double lineWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width ?? double.infinity,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: Colors.white,
            ),
          ),
          if (hasLineBelow) SizedBox(height: spacing),
          if (hasLineBelow)
            Container(
              width: lineWidth,
              height: 10.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                color: Colors.white,
              ),
            )
        ],
      ),
    );
  }
}
