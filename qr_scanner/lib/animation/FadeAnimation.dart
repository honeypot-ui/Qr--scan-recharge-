import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps {
  opacity,
  translateY,
}

class FadeAnimation extends StatelessWidget {

  final double delay;
  final Widget child;

  FadeAnimation(this.child, this.delay);

  @override
  Widget build(BuildContext context) {
    // final tween = MultiTrackTween([
    //   Track("opacity").add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
    //   Track("tanslateY").add(
    //     Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
    //     curve: Curves.easeOut
    //   ),]
    // );
    final tween = MultiTween<AniProps>()
      ..add(
        AniProps.opacity, Tween(begin: 0.0, end: 1.0),
        Duration(milliseconds: 500),)
      ..add(
        AniProps.translateY,
        Tween(begin: -30.0, end: 0.0),
        Duration(milliseconds: 500),
      );
    return PlayAnimation<MultiTweenValues<AniProps>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AniProps.opacity),
        child: Transform.translate(
          offset: Offset(value.get(AniProps.translateY), 0),
          child: child,
        ),
      ),
    );
  }
}
