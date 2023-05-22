# flutter-advanced-1

Flutter advanced tutorial

# Povezave

- https://code.visualstudio.com/ - VS Code
- https://developer.android.com/studio - Android Studio
- https://github.com/git-for-windows/git/releases/download/v2.40.1.windows.1/Git-2.40.1-64-bit.exe - Git
- https://docs.flutter.dev/ - Dokumentacija
- https://docs.flutter.dev/get-started/install - Namestitev
  - https://docs.flutter.dev/get-started/install/windows
  - https://docs.flutter.dev/get-started/install/macos
  - https://docs.flutter.dev/get-started/install/linux

# Uporabne povezave

- https://app.quicktype.io/ - generate Dart from JSON
- https://flutterflow.io/ - WYSIWYG Urejevalnik (plačljivo)
- https://firebase.google.com/ - Firebase, analitika, baza podatkov, prijava v aplikacijo,...
- https://onesignal.com/ - Potisna sporočila
- https://rxlabz.github.io/panache/#/ - Panache je orodje za urejanje gradnikov Flutter
- https://www.supernova.io/ - orodje za razvoj aplikacij Flutter


# Preverjanje Flutter Doctor

```bash
PS C:\Users\johnny\Desktop\DEV\xhorizont\flutter-basic\sample-1> flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[√] Flutter (Channel stable, 3.10.0, on Microsoft Windows [Version 10.0.19042.1706], locale sl-SI)
[√] Windows Version (Installed version of Windows is version 10 or higher)
[!] Android toolchain - develop for Android devices (Android SDK version 33.0.2)
    X cmdline-tools component is missing
      Run `path/to/sdkmanager --install "cmdline-tools;latest"`
      See https://developer.android.com/studio/command-line for more details.
    X Android license status unknown.
      Run `flutter doctor --android-licenses` to accept the SDK licenses.
      See https://flutter.dev/docs/get-started/install/windows#android-setup for more details.
[√] Chrome - develop for the web
[!] Visual Studio - develop for Windows (Visual Studio Community 2022 17.5.5)
    X The current Visual Studio installation is incomplete. Please reinstall Visual Studio.
[√] Android Studio (version 2022.2)
[√] VS Code (version 1.78.2)
[√] Connected device (3 available)
[√] Network resources
```

# Ustvarimo prvo aplikacijo

```bash
flutter create --org com.myname my_app_name
```

# Preverimo delovanje v simulatorju

---

# Onemogočimo Debug Banner

```terminal
MaterialApp(
  debugShowCheckedModeBanner: false,

  home: Scaffold(
    appBar: AppBar(
      title: const Text('Home'),
    ),
  ),  
);
```
