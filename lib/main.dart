import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemini_gpt/pages/onboarding.dart';
import 'package:gemini_gpt/presenter/theme_notifier.dart';
import 'package:gemini_gpt/themes/themes.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  runApp(
      ProviderScope(child: MyApp())
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: themeMode,
      home: Onboarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}