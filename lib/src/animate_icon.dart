import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'animate_icon_config.dart';

/// [AnimatedIcon] is use for render animated icon with different parameter and callback
/// like animateIcon, iconType, onHover, toolTip, onTap, onHover
class AnimateIcon extends StatefulWidget {
  /// [onTap] is callback which is send by user depend on requirement
  /// used to perform actions on tap
  /// required parameter for AnimateIcon
  final Function onTap;

  /// [iconType] provide different state of icon animation
  /// based on it the action is happen
  /// required parameter for AnimateIcon
  final IconType iconType;

  /// [height] is for render animate icon with respected height
  /// Default Value: [50]
  final double height;

  /// [width] is for render animate icon with respected width
  /// Default Value: [50]
  final double width;

  /// [color] is for render animate icon with respected color
  /// Default Value: [Colors.black]
  final Color color;

  /// [animateIcon] is for render animate icon with respected passed icon
  /// required parameter for AnimateIcon
  final AnimateIcons animateIcon;

  /// [onHover] is callback which is send by user depend on requirement
  /// optional parameter for AnimateIcon
  final Function? onHover;

  /// [toolTip] is for showing message when long-press on respected icon
  /// optional parameter for AnimateIcon
  final String? toolTip;

  const AnimateIcon({
    Key? key,
    required this.onTap,
    required this.iconType,
    required this.animateIcon,
    this.height = 50,
    this.width = 50,
    this.color = Colors.black,
    this.onHover,
    this.toolTip,
  }) : super(key: key);

  @override
  State<AnimateIcon> createState() => _AnimateIconState();
}

/// State class of the [AnimateIcon]
class _AnimateIconState extends State<AnimateIcon>
    with TickerProviderStateMixin {
  /// Used to control the behaviour of the animation
  late final AnimationController _animationController;

  /// Initialize the class object
  @override
  void initState() {
    super.initState();

    /// Setting vsync for the frame binding
    _animationController = AnimationController(vsync: this);
  }

  /// Remove the object values
  @override
  void dispose() {
    /// Removing animation controller from the memory
    _animationController.stop();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (_) {
        if (widget.iconType == IconType.animatedOnHover) {
          iconTypeAction();
        }
        widget.onHover?.call();
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

  /// [iconTypeAction] is used for action upon [widget.iconType]
  /// animatedOnTap, animatedOnHover, continueAnimation, onlyIcon, toggleIcon
  /// Based on this behaviour of the animation is defined
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
      case IconType.toggleIcon:
        if (_animationController.isCompleted) {
          _animationController.reverse();
        } else {
          _animationController.forward();
        }

        break;
    }
  }

  /// [getLottieDelegates] is used for set color in respected icon
  /// using its lottie key paths
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
