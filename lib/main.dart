import 'package:flutter/material.dart';

void main() {
  runApp(new ProyekAkhir());
}

class ProyekAkhir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Halaman1(),
    );
  }
}

class Halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 1"),
      ),
      body: Center(
          child: RaisedButton(
        child: Text("Ke Halaman 2"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Halaman2();
          }));
        },
      )),
    );
  }
}

class Halaman2 extends StatefulWidget {
  @override
  State<Halaman2> createState() => _Halaman2State();
}

class _Halaman2State extends State<Halaman2> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Halaman 2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              RaisedButton(
                child: Text("Tambah Nomor"),
                onPressed: tekanTombol,
              )
            ],
          ),
        ),
      ),
    );
  }
}
