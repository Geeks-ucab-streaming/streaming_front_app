# streaming_front_app

Flutter project for a music streaming app, consuming the 'streaming-api'.

## Used architecture

The project seeks to use the architecture established by Reso Coder (*https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/*) with some minors modifications based on some others sources as Flutter Guys (*https://www.youtube.com/watch?v=7V_P6dovixg*), AbdulMuaz Aqeel (*https://devmuaz.medium.com/flutter-clean-architecture-series-part-1-d2d4c2e75c47*) and Petros Efthymiou on his book Clean mobile Architecture. The project is evolving so the architecture could change in the future based in some other authors.

### Architecture Diagram

![Architecture diagram](streaming_front_app/../architecture.png)

Full diagram in: (https://lucid.app/lucidchart/cbad860d-7bc1-4f19-9395-d68ed5985418/edit?viewport_loc=-1626%2C-4568%2C7603%2C6212%2C0_0&invitationId=inv_d488204c-2be8-4240-83ce-38d173dea83b)

## How to run

**Important:** the app is build in Android Tiramisu (API 33) and Flutter 3.13.9

1. Install dependencies from pubspec.yaml
2. Launch Android Emulator ()
3. Run `flutter run lib/main.dart` or click `Run` in VsCode
4. We hope you enjoy :D

## Util commands

- `dart run build_runner watch` for automated runner builder
- `dart run build_runner build` for one time build
