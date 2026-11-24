import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const Color gold = Color(0xFFD4A800);
  static const TextStyle labelStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

  Widget _inputField(IconData icon, {bool showEye = false}) {
    return Container(
      height: 46,
      margin: const EdgeInsets.only(top: 6),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, size: 20),
          if (showEye) const Icon(Icons.visibility_off_outlined, size: 20),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 400),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Icon(Icons.savings, size: 110, color: gold),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 16, bottom: 60),
                    alignment: Alignment.center,
                    child: const Text(
                      'SAVEQUEST',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text('Username', style: labelStyle),
                  _inputField(Icons.person_outline),
                  Container(
                    margin: const EdgeInsets.only(top: 12),
                    child: const Text('Password', style: labelStyle),
                  ),
                  _inputField(Icons.lock_outline, showEye: true),
                  Container(
                    width: double.infinity,
                    height: 46,
                    margin: const EdgeInsets.only(top: 24),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: gold,
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}