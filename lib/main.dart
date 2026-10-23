import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatefulWidget {
  @override
  State<Coba> createState() => Coba_State();
}

class Coba_State extends State<Coba> {
  List<String> menumakanan = ["Soto", "Mie Ayam", "Ayam Geprek"];
  List<String> harga = ["10000", "12000", "15000"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE8D5B7),
        appBar: AppBar(
          title: Text("Menu Makanan"),
          backgroundColor: Color(0xffd2aa68),
        ),
        body: Center(
          child: Column(children: [
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Text("No"),
                  Text("Menu Makanan"),
                  Text("Harga")
                ]),
                for (int i = 0; i < menumakanan.length; i++)
                  TableRow(children: [
                    Text("${i + 1}"),
                    Text(menumakanan[i]),
                    Text(harga[i])
                  ]), // TableRow
              ],
            )
          ]),
        ),
      ),
    );
  }
}
