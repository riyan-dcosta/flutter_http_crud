import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_crud_dummy/features/home_page/presentation/pages/home_page.dart';
import 'color_schemes.g.dart';

Future<void> main() async {
  runApp(const ProviderScope(child: MainPage(),));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true,),
        // theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        // darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        home: const HomePage(),
      ),
    );
  }
}
