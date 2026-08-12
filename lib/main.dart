import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.light,
        ),
        fontFamily: 'Roboto',
      ),
      home: const PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
          side: BorderSide(
            color: Color(0xFF4D4D4D),
            width: 5.0,
          ),
        ),
        title: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 7,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Text(
            'PORTFÓLIO',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(Icons.menu),
              );
            },
          ),
        ],
      ),

      drawer: const Drawer(
        backgroundColor: Colors.black,
        child: Center(
          child: Text(
            'vai corinthians',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      endDrawer: const Drawer(
        backgroundColor: Colors.white,
        child: Center(
          child: Text(
            'vai corinthians',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(22, 30, 22, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 62,
                  backgroundImage: NetworkImage(
                    'https://instagram.fssz9-1.fna.fbcdn.net/v/t51.82787-19/731791674_18061141967727973_6972681491173241758_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_cat=101&ccb=7-5&_nc_sid=f7ccc5&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLnd3dy4xMDgwLkMzIn0%3D&_nc_ohc=kWGF9ko5v4wQ7kNvwGFPfbt&_nc_oc=AdrwnAMbs6HqY8N8r2nZ_xVI33Q3o6HN4SBGUOWXCS7c3C_LtTZ9CJQqPcczLirvhfY&_nc_zt=24&_nc_ht=instagram.fssz9-1.fna&_nc_gid=v8IJSSQqMNq43it4zjDskw&_nc_ss=786a8&oh=00_AQGeq318J_Yz4JFahSPjkhI-pcu6G9GiP2hy_EBnO7SJKg&oe=6A827B2D',
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                'Rafael Belchior',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 6),

            const Center(
              child: Text(
                'Desenvolvedor de Sistemas',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 5),

            const Center(
              child: Text(
                '16 anos • mongaguá, SP',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 30),

            _buildSectionTitle('CONTATO'),

            const SizedBox(height: 15),

            _buildContactItem(
              Icons.email_outlined,
              'vaicorinhians@gmail.com',
            ),

            _buildContactItem(
              Icons.phone_outlined,
              '(13) 99999-9999',
            ),

            _buildContactItem(
              Icons.alternate_email,
              '@belchior._013',
            ),

            const SizedBox(height: 30),

            _buildSectionTitle('RESUMO PROFISSIONAL'),

            const SizedBox(height: 15),

            const Text(
              'Tenho formação técnica em Desenvolvimento de Sistemas na Etec Adolpho Berezin. Ainda não possuo experiência profissional',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Color(0xFF333333),
              ),
            ),

            const SizedBox(height: 30),

            _buildSectionTitle('OBJETIVO'),

            const SizedBox(height: 15),

            const Text(
              'Busco minha primeira oportunidade profissional para desenvolver minhas habilidades, adquirir experiência e contribuir com a equipe.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Color(0xFF333333),
              ),
            ),

            const SizedBox(height: 30),

            _buildSectionTitle('FORMAÇÃO'),

            const SizedBox(height: 15),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFFE0E0E0),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Desenvolvimento de Sistemas',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'ETEC Adolpho Berezin',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

         
            const SizedBox(height: 35),

            Center(
              child: Container(
                width: 45,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                'VAI CORINTHIANS • PAM I',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: Color.fromARGB(255, 201, 7, 7),
                ),
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),

      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: Colors.black12,
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Perfil',
          ),
          NavigationDestination(
            icon: Icon(Icons.info_outline),
            selectedIcon: Icon(Icons.info),
            label: 'Sobre',
          ),
        ],
      ),
    );
  }

  static Widget _buildSectionTitle(String title) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 22,
          color: Colors.black,
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.8,
          ),
        ),
      ],
    );
  }

  static Widget _buildContactItem(
    IconData icon,
    String text,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Icon(
            icon,
            size: 21,
            color: Colors.black,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF333333),
              ),
            ),
          ),
        ],
      ),
    );
  }
}