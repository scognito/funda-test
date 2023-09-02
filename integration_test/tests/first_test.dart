import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:funda_test/config/app_colors.dart';
import 'package:funda_test/config/utils.dart';
import 'package:funda_test/screens/home/screen_home_view.dart';
import 'package:funda_test/widgets/apartment_list_item_view.dart';

import '../mock_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupLocators();
  await locator.allReady();

  setUp(() async {
    dPrint('Setup widget test at: ${DateTime.now().toIso8601String()}');
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.fundaOrange,
          secondary: AppColors.fundaOrange,
        ),
      ),
      home: const ScreenHome(),
    );
  }

  group('Home Screen Integration Test', () {
    testWidgets('Test HomeScreen Loading', (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      await tester.pumpAndSettle();

      expect(find.text('Funda'), findsOneWidget);

      expect(find.byType(SearchBar), findsOneWidget);

      expect(find.byType(CircularProgressIndicator), findsNothing);
    });

    testWidgets('Test Search', (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      await tester.pumpAndSettle();

      final Finder searchField = find.byKey(const Key('SearchBar'));

      await tester.enterText(searchField, 'Amsterdam');

      await tester.pumpAndSettle();

      await tester.testTextInput.receiveAction(TextInputAction.done);

      await tester.pumpAndSettle();

      expect(find.byType(ApartmentListItemView), findsWidgets);

      await tester.tap(find.byType(ApartmentListItemView).first);

      await tester.pumpAndSettle(Duration(seconds: 3));
    });
  });
}
