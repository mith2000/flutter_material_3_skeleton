import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoader extends StatefulWidget {
  final Future Function() loadData;
  final Widget Function() buildPlaceholder;
  final Widget Function(dynamic) buildContent;
  final Color baseColor;
  final Color highlightColor;

  const ShimmerLoader({
    super.key,
    required this.loadData,
    required this.buildPlaceholder,
    required this.buildContent,
    this.baseColor = Colors.grey,
    this.highlightColor = Colors.white,
  });

  @override
  State<ShimmerLoader> createState() => _ShimmerLoaderState();
}

class _ShimmerLoaderState extends State<ShimmerLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.loadData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Shimmer.fromColors(
            baseColor: widget.baseColor,
            highlightColor: widget.highlightColor,
            child: widget.buildPlaceholder(),
          );
        } else if (snapshot.hasData) {
          _controller.forward();
          return FadeTransition(
            opacity: _controller,
            child: widget.buildContent(snapshot.data),
          );
        } else {
          return const Text('Something went wrong');
        }
      },
    );
  }
}
