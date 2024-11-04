import 'package:flutter_test/flutter_test.dart';
import 'package:hairsector/main.dart';

void main() {
  testWidgets('Cronômetro inicia, pausa e reinicia', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verifica se o texto do cronômetro está presente
    expect(find.text('00:00'), findsOneWidget);

    // Inicia o cronômetro
    await tester.tap(find.text('Iniciar'));
    await tester.pump(); // Atualiza o widget

    // Aguarda um segundo para verificar se o cronômetro incrementa
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('00:01'), findsOneWidget);

    // Pausa o cronômetro
    await tester.tap(find.text('Pausar'));
    await tester.pump();

    // Verifica se o cronômetro continua em 1 segundo
    expect(find.text('00:01'), findsOneWidget);

    // Reinicia o cronômetro
    await tester.tap(find.text('Reiniciar'));
    await tester.pump();

    // Verifica se o cronômetro volta para 00:00
    expect(find.text('00:00'), findsOneWidget);
  });
}
