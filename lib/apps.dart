import 'package:dotxbt_tasbih/tasbih.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});
  @override
  Widget build(BuildContext context) {
    return const AppsChild();
  }
}

class AppsChild extends StatelessWidget {
  const AppsChild({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Love Remit ID',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      theme: ThemeData.dark().copyWith(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.black,
          onPrimary: Colors.black,
          secondary: Color.fromARGB(255, 74, 76, 82),
          onSecondary: Color.fromARGB(255, 103, 100, 100),
          error: Color.fromARGB(255, 227, 17, 17),
          onError: Color.fromARGB(255, 231, 40, 27),
          background: Color(0xFF181A1E),
          onBackground: Color(0xFF181A1E),
          surface: Color.fromARGB(255, 39, 42, 48),
          onSurface: Color.fromARGB(255, 39, 42, 48),
        ),
        textTheme: const TextTheme().copyWith(titleMedium: const TextStyle()),
        scaffoldBackgroundColor: Colors.black,
        dialogBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: Colors.amber,
          surfaceTintColor: Colors.amber,
          elevation: 0.0,
          foregroundColor: const Color.fromARGB(255, 207, 207, 216),
          titleTextStyle: TextStyle(
            color: Colors.grey.shade300,
            fontSize: 18.0,
          ),
        ),
        iconTheme: const IconThemeData().copyWith(
          color: Colors.grey.shade100,
        ),
        inputDecorationTheme: const InputDecorationTheme().copyWith(
          filled: true,
          fillColor: Colors.black,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 17,
          ),
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
          outlineBorder: BorderSide.none,
          alignLabelWithHint: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide.none,
            gapPadding: 10,
          ),
          activeIndicatorBorder: BorderSide.none,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              width: 0.7,
              color: Colors.pink.shade300,
            ),
          ),
        ),
      ),
      routes: {
        "/": (BuildContext context) => const TasbihPage(),
      },
      builder: (context, child) {
        adaptiveNavigationColor("dark");
        return keepTextScaller(child, context);
      },
    );
  }

  Widget keepTextScaller(Widget? child, BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context)
          .copyWith(textScaler: const TextScaler.linear(1.0)),
      child: child ??
          const Center(
            child: CircularProgressIndicator(),
          ),
    );
  }

  void adaptiveNavigationColor(String mode) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: const Color.fromARGB(0, 32, 41, 53),
        systemNavigationBarIconBrightness:
            mode == "dark" ? Brightness.light : Brightness.dark,
        statusBarColor: const Color.fromARGB(0, 32, 41, 53),
        statusBarIconBrightness:
            mode == "dark" ? Brightness.light : Brightness.dark,
      ),
    );
  }
}
