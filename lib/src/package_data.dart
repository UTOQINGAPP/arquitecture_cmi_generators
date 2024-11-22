import 'dart:io';
import 'package:yaml/yaml.dart';

String? getProjectName() {
  try {
    // Lee el archivo pubspec.yaml
    final file = File('pubspec.yaml');
    if (!file.existsSync()) {
      throw Exception('No se encontró el archivo pubspec.yaml');
    }
    
    // Carga el contenido y lo parsea
    final content = file.readAsStringSync();
    final yamlMap = loadYaml(content);

    // Obtiene el nombre del proyecto
    if (yamlMap is YamlMap && yamlMap.containsKey('name')) {
      return yamlMap['name'];
    } else {
      throw Exception('No se pudo encontrar el nombre del proyecto en pubspec.yaml');
    }
  } catch (e) {
    print('Error al obtener el nombre del proyecto: $e');
    return null;
  }
}