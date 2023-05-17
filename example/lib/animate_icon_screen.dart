import 'package:flutter/material.dart';
import 'dart:math';

import 'package:animated_icon/animated_icon.dart';

class AnimateIconScreen extends StatelessWidget {
  const AnimateIconScreen({
    required this.iconType,
    Key? key,
  }) : super(key: key);

  final IconType iconType;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: AnimateIcons.values
                .map(
                  (AnimateIcons e) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        AnimateIcon(
                          key: UniqueKey(),
                          onTap: () {},
                          iconType: iconType,
                          height: 70,
                          width: 70,
                          color: Color.fromRGBO(
                              Random.secure().nextInt(255),
                              Random.secure().nextInt(255),
                              Random.secure().nextInt(255),
                              1),
                          animateIcon: e,
                        ),
                        Text(e.toString().split('.').last)
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
