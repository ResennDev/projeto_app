import 'package:flutter/material.dart';
import 'package:projeto_app/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                // Ação ao pressionar
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                
                boxShadow: [
                  BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 3),
                  ),
                ],
                ),
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.white,
                  ),
                
                SizedBox(height: 10),

                  Text(
                    'Bem-vindo!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ]
              ),),
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 3),
                  ),
                ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings, size: 40, color: Colors.green),
                        SizedBox(height: 10),
                        Text('Configurações'),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 15),

              Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),

                      boxShadow: [
                  BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 3),
                  ),
                ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, size: 40, color: Colors.green),
                        SizedBox(height: 10),
                        Text('Perfil'),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ]
        ),
      ),
    );
  }
}
