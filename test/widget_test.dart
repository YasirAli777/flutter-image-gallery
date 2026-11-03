import 'package:flutter_test/flutter_test.dart';
import 'package:image_gallery/main.dart';

void main() {
  testWidgets('Image Gallery app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(MyApp), findsOneWidget);
  });
}