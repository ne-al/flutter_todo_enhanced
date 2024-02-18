import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_todo_enhanced/firebase_options.dart';
import 'package:flutter_todo_enhanced/routes.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(432.0, 960.0),
        ensureScreenSize: true,
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'Todo Enhanced',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Oswald',
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
                brightness: Brightness.dark,
              ).copyWith(
                background: Colors.black,
              ),
              useMaterial3: true,
            ),
            routerConfig: routes,
          );
        });
  }
}
