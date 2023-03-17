import 'package:flutter/material.dart';
import 'package:sozlukyeni/fab.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Benim Sözlüğüm';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () {
              // Çeviri simgesine tıklandığında yapılacak işlemler buraya yazılacak
            },
            icon: Icon(Icons.translate),
          ),
        ],
      ),
      body: Center(

      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Benim Sözlüğüm'),
            ),
            ListTile(
              leading: Icon(Icons.download), // Icon eklendi
              title: const Text('Yazı dosyası olarak indir'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),ListTile(
              leading: Icon(Icons.font_download), // Icon eklendi
              title: const Text('Yazı Stilini veya Yazı Rengini değiştir'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),ListTile(
              leading: Icon(Icons.workspace_premium), // Icon eklendi
              title: const Text('Premium satın al'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),ListTile(
              leading: Icon(Icons.star), // Icon eklendi
              title: const Text('Uygulamaya puan ver'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),ListTile(
              leading: Icon(Icons.privacy_tip), // Icon eklendi
              title: const Text('Gizlilik Politikası'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Sözlük oluşturma ekranına yönlendir
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateDictionaryScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
