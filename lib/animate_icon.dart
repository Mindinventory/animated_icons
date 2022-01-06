library animated_icon;

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'animate_icons.dart';

class AnimateIcon extends StatefulWidget {
  final Function onTap;
  final IconType iconType;
  final double height;
  final double width;
  final Color color;
  final AnimateIcons animateIcon;
  final Function? onHover;
  final String? toolTip;
  const AnimateIcon(
      {Key? key,
      required this.onTap,
      required this.iconType,
      required this.animateIcon,
      this.height = 50,
      this.width = 50,
      this.color = Colors.black,
      this.onHover,
      this.toolTip})
      : super(key: key);

  @override
  _AnimateIconState createState() => _AnimateIconState();
}

class _AnimateIconState extends State<AnimateIcon>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (_) {
        if (widget.iconType == IconType.animatedOnHover) {
          iconTypeAction();
        }
        widget.onHover ?? () {};
      },
      onTap: () {
        if (widget.iconType != IconType.continueAnimation) {
          iconTypeAction();
        }

        widget.onTap();
      },
      child: Tooltip(
        message: widget.toolTip?.trim() ?? '',
        child: Lottie.asset(
          widget.animateIcon.getAnimatedLottieIcon(),
          repeat: widget.iconType == IconType.continueAnimation,
          controller: _animationController,
          onLoaded: (composition) {
            _animationController.duration = composition.duration;
            if (widget.iconType == IconType.continueAnimation) {
              iconTypeAction();
            }
          },
          animate: widget.iconType == IconType.animatedOnTap,
          height: widget.height,
          width: widget.width,
          addRepaintBoundary: true,
          delegates: getLottieDelegates(),
          package: 'animated_icon',
        ),
      ),
    );
  }

  void iconTypeAction() {
    switch (widget.iconType) {
      case IconType.animatedOnHover:
        _animationController
            .forward()
            .then((value) => _animationController.reset());
        break;

      case IconType.onlyIcon:
        break;

      case IconType.animatedOnTap:
        _animationController
            .forward()
            .then((value) => _animationController.reset());
        break;

      case IconType.continueAnimation:
        _animationController
            .forward()
            .then((value) => _animationController.repeat());

        break;
    }
  }

  LottieDelegates getLottieDelegates() {
    return LottieDelegates(
      text: (initialText) => '**$initialText**',
      values: [
        ValueDelegate.strokeColor(
          const [
            'lottie Outlines',
            'Group 1',
            '**',
          ],
          value: widget.color,
        ),
        ValueDelegate.strokeColor(
          const [
            'lottie Outlines',
            'Group 2',
            '**',
          ],
          value: widget.color,
        ),
        ValueDelegate.color(
          const [
            'lottie Outlines',
            'Group 2',
            'Fill 1',
          ],
          value: widget.color,
        ),
        ValueDelegate.color(
          const [
            'lottie Outlines',
            'Group 1',
            'Fill 1',
          ],
          value: widget.color,
        ),
      ],
    );
  }
}
