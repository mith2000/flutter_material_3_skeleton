import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class ContainerTransformAnimation extends StatelessWidget {
  const ContainerTransformAnimation({
    super.key,
    required this.child,
    required this.buildResult,
    this.transitionType,
    required this.onClosed,
  });

  final CloseContainerBuilder child;
  final Widget Function(BuildContext ctx, VoidCallback callback) buildResult;
  final ContainerTransitionType? transitionType;
  final ClosedCallback<bool?> onClosed;

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      transitionType: transitionType ?? ContainerTransitionType.fade,
      openBuilder: buildResult,
      onClosed: onClosed,
      tappable: false,
      closedBuilder: child,
    );
  }
}
