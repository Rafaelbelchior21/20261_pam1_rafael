import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 243, 75, 33),
        ),
        useMaterial3: true,
      ),
      home: const PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etec Adolpho Berezim - PAM1'),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      drawer: const Drawer(
        child: Center(child: Text('Menu lateral')),
      ),
      endDrawer: const Drawer(
        child: Center(child: Text('Menu lateral direito')),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.redAccent,
              child: CircleAvatar(
                radius: 56,
                backgroundImage: NetworkImage('https://github.com/diognesllpereira.png'),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Diógenes Leandro Leite Pereira',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Text(
              '49 anos - Itanhaém, SP',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
            const SizedBox(height: 20),
            const Divider(),
            _buildContactItem(Icons.email, 'professor@etec.sp.gov.br'),
            _buildContactItem(Icons.phone, '(13) 99999-9999'),
            _buildContactItem(Icons.web, '@diogenesllpereira'),
            const Divider(),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Resumo profissional',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.redAccents),
              ),
            ),
          ],
        ),
      ),
        const SizedBox(height:10),
        const Text(
          'Professor do ensino tecnico e superior com mais de 18 anos de experiencia. Especialista em desenvolvimento Full-Stack e entusiasta de metodologias Clean Code',
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 16),
        )
        const SizedBox(height: 25),

        const Align(
          alignment: ,)
            value: 'menu',
            child: Text('Opções adicionais'),
          ),
        ],
        child: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Casa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }

  static Widget _buildContactItem(IconData icon, String label) {
    return ListTile(
      leading: Icon(icon, color: Colors.redAccent),
      title: Text(label),
      dense: true,
    );
  }
}