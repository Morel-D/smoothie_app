import 'package:flutter/material.dart';
import 'package:smoothie/Models/user.dart';
import 'package:smoothie/Pages/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:smoothie/Services/auth.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      initialData: null,
      value: AuthService().onAuthStateChanged,
      builder: (context, snapshot) {
        return MaterialApp(debugShowCheckedModeBanner: false, home: Wrapper());
      },
    );
  }
}
