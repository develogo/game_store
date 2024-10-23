import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_store/src/widgets/white_button_widget.dart';

void main() {
  group('WhiteButtonWidget', () {
    testWidgets('renderiza corretamente', (WidgetTester tester) async {
      // Arrange
      const buttonText = 'Clique aqui';

      // Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WhiteButtonWidget(
              onPressed: () {},
              title: buttonText,
            ),
          ),
        ),
      );

      // Assert
      expect(find.text(buttonText), findsOneWidget);
      expect(find.byType(WhiteButtonWidget), findsOneWidget);
      expect(find.byType(TextButton), findsOneWidget);
      expect(find.byType(Container), findsOneWidget);
    });

    testWidgets('chama onPressed quando pressionado',
        (WidgetTester tester) async {
      // Arrange
      bool foiPressionado = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WhiteButtonWidget(
              onPressed: () {
                foiPressionado = true;
              },
              title: 'Teste',
            ),
          ),
        ),
      );

      // Act
      await tester.tap(find.byType(TextButton));
      await tester.pump();

      // Assert
      expect(foiPressionado, isTrue);
    });
  });
}
