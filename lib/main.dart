import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'K3521060',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // To center the title text
        backgroundColor: const Color.fromARGB(255, 5, 42, 72),
        actions: const [],
      ),
      backgroundColor: const Color.fromARGB(255, 220, 220, 210),
      body: Center(
        child: Container(
          child: Text("Rado Situmorang"),
          padding: const EdgeInsets.all(20.0),
        ),
      ),
      floatingActionButton: Container(
        width: 150, // Atur lebar tombol
        height: 50, // Atur tinggi tombol
        child: ElevatedButton(
          onPressed: () {
            // Aksi saat tombol ditekan
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 4, 44, 77), // Warna tombol
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Border radius
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.search, size: 15, color: Colors.white,), // Ikon pada tombol
              SizedBox(width: 5), // Spasi antara ikon dan teks
              Text(
                'Cari',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Rado Situmorang"),
              accountEmail: const Text("radositumorang@student.uns.ac.id"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.ibb.co.com/cTcQMTm/Whats-App-Image-2024-06-19-at-20-07-34.jpg"),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey[900],
              ),
              otherAccountsPictures: const [],
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.code),
              title: const Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.rule),
              title: const Text("TOS"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text("Privacy Policy"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text("Logout"),
              onTap: () {},
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Tambah",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: "Hapus",
          ),
        ],
      ),
    );
  }
}
