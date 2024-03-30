import 'package:flutter/material.dart';

class listdokter extends StatefulWidget {
  @override
  _listdokterState createState() => _listdokterState();
}

class _listdokterState extends State<listdokter> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(220, 95, 170, 255),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            // Aksi saat tombol ditekan
          },
        ),
        title: Text(
          'Pesan',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                top: constraints.maxHeight * 0.18 - 25.0,
                left: constraints.maxWidth * 0.55,
                right: constraints.maxWidth * 0.10,
                child: ElevatedButton(onPressed: () {}, child: Text("Poli Umum"))),
              Positioned(
                top: constraints.maxHeight * 0.18 - 25.0,
                left: constraints.maxWidth * 0.10,
                right: constraints.maxWidth * 0.55,
                child: ElevatedButton(onPressed: () {}, child: Text("Poli Jantung"))),
              Positioned(
                top: constraints.maxHeight * 0.05 - 25.0,
                left: constraints.maxWidth * 0.1,
                right: constraints.maxWidth * 0.1,
                child: Card(
                  elevation: 5,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: constraints.maxWidth * 0.8,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Cari pemeriksaan kesehatan",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            Positioned(
              top: constraints.maxHeight * 0.25 - 25.0,
                left: constraints.maxWidth * 0.1,
                right: constraints.maxWidth * 0.1,
              child: Card(
                child: ListTile(onTap: () {},
              trailing: const Icon(Icons.more_vert),
              title: const Text('dr. Stenafie Russel'),
              subtitle: const Text('Spesialis Jantung'),
              tileColor: Color.fromARGB(179, 247, 240, 240),
              ),
              )
              ),
              Positioned(
              top: constraints.maxHeight * 0.40 - 25.0,
                left: constraints.maxWidth * 0.1,
                right: constraints.maxWidth * 0.1,
              child: Card(
                child: ListTile(onTap: () {},
              trailing: const Icon(Icons.more_vert),
              title: const Text('dr. Jacob Potter'),
              subtitle: const Text('Spesialis Jantung'),
              tileColor: Color.fromARGB(179, 247, 240, 240),
              ),
              )
              ),
              Positioned(
              top: constraints.maxHeight * 0.55 - 25.0,
                left: constraints.maxWidth * 0.1,
                right: constraints.maxWidth * 0.1,
              child: Card(
                child: ListTile(onTap: () {},
              trailing: const Icon(Icons.more_vert),
              title: const Text('dr. Sulaiman Rasyid'),
              subtitle: const Text('Spesialis Jantung'),
              tileColor: Color.fromARGB(179, 247, 240, 240),
              ),
              )
              ),
              Positioned(
              top: constraints.maxHeight * 0.70 - 25.0,
                left: constraints.maxWidth * 0.1,
                right: constraints.maxWidth * 0.1,
              child: Card(
                child: ListTile(onTap: () {},
              trailing: const Icon(Icons.more_vert),
              title: const Text('dr. Mela Nurmala'),
              subtitle: const Text('Spesialis Jantung'),
              tileColor: Color.fromARGB(179, 247, 240, 240),
              ),
              )
              )
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Artikel',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: listdokter(),
  ));
}
