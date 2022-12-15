import 'package:flutter/material.dart';

enum AnimationType {
  normal,
  fadeIn,
}

class PageEffect {
  final BuildContext context;
  final Widget child;
  final AnimationType animation;
  final Duration duration;
  final bool replacement;

  PageEffect(
      {required this.context,
      required this.child,
      this.animation = AnimationType.normal,
      this.duration = Duration.zero,
      this.replacement = false}) {
    switch (animation) {
      case AnimationType.normal:
        _normalEffect();
        break;
      case AnimationType.fadeIn:
        _fadeInEffect();
        break;
    }
  }

  void _normalEffect() {
    final route = MaterialPageRoute(
      builder: ((context) => child),
    );

    (replacement) ? _pushReplacementPage(route) : _pushPage(route);
  }

  void _fadeInEffect() {
    final route = PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      transitionsBuilder: (_, animation, __, child) {
        return FadeTransition(
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeOut)),
            child: child);
      },
    );

    (replacement) ? _pushReplacementPage(route) : _pushPage(route);
  }

  void _pushReplacementPage(Route route) =>
      Navigator.pushReplacement(context, route);

  void _pushPage(Route route) => Navigator.push(context, route);
}
