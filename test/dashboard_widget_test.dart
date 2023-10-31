import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets('Should display the main image when the Dashboard is opened', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(home: Dashboard()));
    final mainImage = find.byType(Image);
    expect(mainImage, findsOneWidget);
  });

  testWidgets('Should display the transfer feature when the Dashboard is opened', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(home: Dashboard()));
    final iconTransferFeatureItem = find.widgetWithIcon(FeatureItem, Icons.monetization_on);
    final nameTransferFeatureItem = find.widgetWithText(FeatureItem, "Transfer");
    expect(iconTransferFeatureItem, findsWidgets);
    expect(nameTransferFeatureItem, findsOneWidget);
  });
}