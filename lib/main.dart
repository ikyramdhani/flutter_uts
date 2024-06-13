import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tugas UTS rizkyawanramdhani'),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(9, (index) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    color: Color.fromARGB(255, 47, 159, 233),
                  );
                }),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              title: Text('Iky'),             
              subtitle: Text('ramdhani'),                     
              trailing: Icon(Icons.remove_circle_rounded),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 245, 239, 239),
              ),
              title: Text('Iky'),
              subtitle: Text('Ramdhani'),
              trailing: Icon(Icons.remove_circle_rounded),
            ),
          ],
        ),
      ),
    );
  }
}