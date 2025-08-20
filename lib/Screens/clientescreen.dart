import 'package:flutter/material.dart';
import 'package:braga_resolve/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: const ClienteScreen(),
    );
  }
}

class ClienteScreen extends StatelessWidget {
  const ClienteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double topoHeight = 83;
    const double logoHeight = 60;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Corpo
          Padding(
            padding: EdgeInsets.only(top: topoHeight + logoHeight / 2, bottom: 60, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                const Text(
                  'Entrar como Cliente',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text('Email:', style: TextStyle(color: Colors.grey, fontSize: 14)),
                const SizedBox(height: 5),
                SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Image.asset('assets/images/email_icon.png', height: 18, width: 18),
                      hintText: 'Email',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text('Senha:', style: TextStyle(color: Colors.grey, fontSize: 14)),
                const SizedBox(height: 5),
                SizedBox(
                  height: 40,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset('assets/images/lock_icon.png', height: 18, width: 18),
                      hintText: 'Senha',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Esqueceu a senha?', style: TextStyle(color: Colors.black, fontSize: 12)),
                  ),
                ),
                const SizedBox(height: 15),
             
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF2DB0D),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      elevation: 0,
                    ),
                    child: const Text('Entrar', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                ),
                const SizedBox(height: 25), 
                Row(
                  children: [
                    Expanded(child: Container(height: 1, color: Colors.grey[300])),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text('Ou entrar com', style: TextStyle(fontSize: 12)),
                    ),
                    Expanded(child: Container(height: 1, color: Colors.grey[300])),
                  ],
                ),
                const SizedBox(height: 25), 
                SizedBox(
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.asset('assets/images/google_logo.png', height: 20, width: 20),
                    label: const Text('Entrar com Google', style: TextStyle(fontSize: 14)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Não tem conta?", style: TextStyle(fontSize: 12)),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Criar conta', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Topo
          SizedBox(
            width: double.infinity,
            height: topoHeight,
            child: Image.asset("assets/images/logo_top.jpg", fit: BoxFit.cover),
          ),
          // Seta de voltar
          Positioned(
            top: 20,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                );
              },
            ),
          ),
          // Logo pequeno
          Positioned(
            top: topoHeight - logoHeight / 2,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset('assets/images/logo.png', height: logoHeight),
            ),
          ),
          // Footer
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              width: double.infinity,
              height: 110,
              child: Image.asset("assets/images/footer.jpg", fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
