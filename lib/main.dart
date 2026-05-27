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
      ),

      drawer: const Drawer(
        child: Center(
          child: Text('Menu lateral'),
        ),
      ),

      endDrawer: const Drawer(
        child: Center(
          child: Text('menu lateral direito'),
        ),
      ),

    body:SingleChildScrollView(

      padding: const EdgeInsets.all(20.0),

      child:Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const CircleAvatar(
            radius: 60,
            backgroundColor: colors.redAccent,
            child: CircleAvatar(
              radius: 56,

              backgroundImage: NetworkImage('https://github.com/diognesllpereira.png'),

            ),
          ),
        
         const SizedBox(height: 15,)

         const Text(
          'diogenes leandro leite pereira',
          textAlign: TextAlign.center, 
          style: TextStyle(fontSize: 26,fontWeight:FontWeight.bold),

         ),

      )
    )
        builder: (context) {
          return FloatingActionButton(
            onPressed: () async {
              await showMenu(
                context: context,
                position: const RelativeRect.fromLTRB(
                  1000,
                  450,
                  40,
                  100,
                ),
                items: [
                  const PopupMenuItem(
                    child: Text('3 menu'),
                  ),
                ],
              );
            },
            child: const Icon(Icons.add),
          );
        },
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
}