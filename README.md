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

Copyright 2023 arquitecture_cmi_generators of copyright UTOQINGAPP

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
