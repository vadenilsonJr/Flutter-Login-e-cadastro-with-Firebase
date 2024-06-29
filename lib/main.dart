import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loginecadastro/telas/autenticacao_tela.dart';
import 'package:loginecadastro/telas/home_page.dart';
import 'services/firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(AppWiget());
}

class AppWiget extends StatelessWidget {
  const AppWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RoteadorTela(),
    );
  }
}

class RoteadorTela extends StatelessWidget {
  const RoteadorTela({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.userChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return AutenticacaoTela();
        }
      },
    );
  }
}
