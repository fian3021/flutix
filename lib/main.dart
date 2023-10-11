import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutix/services/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red, // foreground
              ),
              onPressed: () async {
                await AutServices.signUp("sifa@gmail.com", "123456", "anton",
                    ["Romantic", "Horror", "Sci-Fi", "Drama"], "Korean");
              },
              child: const Text('Sign Up'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor:
                    Color.fromARGB(255, 52, 123, 255), // Warna latar tombol
              ),
              onPressed: () async {
                // Ketika tombol "Sign In" ditekan, panggil metode signIn dari AutServices
                // untuk mengotentikasi pengguna dengan data yang telah ditentukan.
                await AutServices.signIn("sifa@gmail.com", "123456");
              },
              child: const Text('Sign In'),
            )
          ],
        ),
      )), //comma makes auto-formatting nicer for build methods.
    );
  }
}
