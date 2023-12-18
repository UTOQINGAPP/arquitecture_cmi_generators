import 'dart:io';
import 'package:ansicolor/ansicolor.dart';
import 'package:args/args.dart';
import 'package:arquitecture_cmi_generators/src/cmi_arquitecture_gen.dart';

void main(List<String> arguments) async {
  AnsiPen redPen = AnsiPen()..red(bold: true);
  AnsiPen greenPen = AnsiPen()..green(bold: true);

  try {
    final parser = ArgParser()..addCommand('build');

    final results = parser.parse(arguments);
    if (results.command == null) {
      throw ('Please provide a valid command, e.g., "build".');
    }
    if (results.command!.name == 'build') {
      final cmiArquitecture = CmiArchitectureGen();
      await cmiArquitecture.generate();
      print(greenPen(
          'CMI Architecture has been generated successfully! Read the resulting file "result_arquitecture_cmi_generators".'));
    } else {
      throw ('Unknown command: ${results.command!.name}');
    }
  } catch (e) {
    print(redPen(e.toString()));
    exit(1);
  }
}
