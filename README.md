## CMI arquitecture Generator

Generate a project with the CMI architecture.

## Table of Contents

- [Installation][#installation]
- [Usage][#usage]
- [Folder Structure][#folder-structure]
- [License][#license]


## Installation
Do not install the package in **dependencies**. Please note that it is a development package.

1. Add 'architecture_cmi_generators' as a development dependency in your 'pubspec.yaml';

 ```
 dev_dependencies:
   arquitecture_cmi_generators: 0.0.1
 ```

2. Run 'dart pub get' to install the package

## Usage

## 1 Clean Architecture

To build the project with the CMI architecture, run the following command:

```
dart run arquitecture_cmi_generators build
```

This command will create a new folder and file structure for the CMI architecture.

## Folder Structure

The generated folder structure is as follows:

```
lib
└── config
    └── colors
    └── constans
    └── helpers
    └── languages
    └── router
    └── theme
    └── types
    └── config.dart

└── core
    └── domain
        └── datasources
        └── entities
        └── repositories
    └── implementation
        └── adapters
        └── datasources
        └── models
        └── repositories
    └── core.dart
        
└── ui
    └── screens
        └── screens.dart
    └── views
        └── views.dart
    └── components
        └── delegates
        └── shared
        └── components.dart
        
└── result_arquitecture_cmi_generators.dart

```



## License

This project is licensed under the MIT License.

Remember to adjust the version number and any other information as needed. Save this README as `README.md` in the root directory of your package. This will help users understand how to use your package and provide a clear overview of its features and usage.
