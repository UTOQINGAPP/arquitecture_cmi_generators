import 'dart:io';

Future<void> generateFile({
  required String path,
  required String fileName,
  required String fileContent,
}) async {
  final file = File('$path/$fileName');
  final sink = file.openWrite();
  sink.write(fileContent);
  await sink.flush();
  await sink.close();
}
