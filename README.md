# flutter_material_3_skeleton

This repository houses a robust Flutter framework, primarily featuring a Material Design 3 sample page for immediate implementation. It is enriched with a suite of fundamental utilities frequently employed in Flutter development, offering a comprehensive starting point for your Flutter projects.

## Skeleton info

### Android (default by Flutter 3.19.0)

    - Combine SDK Version: 34
    - Target SDK Version: 33
    - Min SDK Version: 19

### IOS (default by Flutter 3.19.0)

    - Min OS Version: 11

### Environment Config

    - Dev
    - Prod (not yet)

### Clean Architecture Pattern

    - App Module
    - Data Module
    - Domain Module (not yet)

### Dependency Injection

    - GetX

#### App Layer

    - GetX
    - Localization: vi, en
    - Theme: Light, Dark
    - Connectivity
    - Default font for setup: SFPro

#### Components

    - Basic use Material Design 3 with minimized UI Kit page
    - Flutter Slidable
    - flutter_svg

#### Resources

    - flutter_gen
    - build_runner
    - flutter_gen_runner
    - flutter_launcher_icons
    - flutter_native_splash
    - intl & intl_utils

#### Utilities

    - Default PairClass, TripleClass
    - Default Debounce utils
    - Log using logger

#### Data Layer

    - Local storage: Shared Preferences

## Guideline Run project

### MacOs

- One time: `make denied` (Mac OS)
- PreBuild: `make pre-bootstrap`, `make pub-get`, `make build-init`, `make build-resource`
- Run Project: `make run-dev`
- Everytime after coding: `make all`

#### For more configuring environment
- PreBuild: `make pre-bootstrap`, `make pub-get`, `make build-init flavor=dev`, `make build-init flavor=prod`, `make build-runner`
- Get Command for run: `make run flavor=dev/staging/prod` -> After running finished, copy command
- Run Project: `cd app`, paste copied command to run with `fvm` in front. E.g: `fvm <copied-command>`