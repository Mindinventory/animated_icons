import 'package:animated_icon/animate_icon.dart';
import 'package:animated_icon/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lottie/lottie.dart';

void main() {
  testWidgets('AnimateIcon test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AnimateIcon(
            animateIcon: AnimateIcons.activity,
            onTap: () {},
            iconType: IconType.onlyIcon,
          ),
        ),
      ),
    );

    await tester.pump();

    expect(find.byType(Lottie), findsOneWidget);
    expect(find.byType(InkWell), findsOneWidget);
  });
}
