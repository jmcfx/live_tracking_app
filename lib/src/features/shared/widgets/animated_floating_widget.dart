import 'package:flutter/material.dart';

class AnimatedFloatingWidget extends StatefulWidget {
  final Widget child;
  final double floatOffset;
  final Duration duration;

  const AnimatedFloatingWidget({
    super.key,
    required this.child,
    this.floatOffset = -5.0,
    this.duration = const Duration(seconds: 3),
  });

  @override
  State<AnimatedFloatingWidget> createState() => _AnimatedFloatingWidgetState();
}

class _AnimatedFloatingWidgetState extends State<AnimatedFloatingWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: widget.floatOffset).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
