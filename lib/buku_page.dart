import 'package:flutter/material.dart';
import 'package:flutter_application_1/buku_detail.dart';
import 'package:flutter_application_1/buku_form.dart';

class BukuPage extends StatefulWidget {
  const BukuPage({Key? key}) : super(key: key);

  @override
  _BukuPageState createState() => _BukuPageState();
}

class _BukuPageState extends State<BukuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Buku'),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BukuForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          ItemBuku(
            kodeBuku: "001",
            namaBuku: "Janji",
            penulis: "Tere Liye",
            tahunTerbit: "2020",
          ),
          ItemBuku(
            kodeBuku: "002",
            namaBuku: "Streamer Besar",
            penulis: "Dean KT",
            tahunTerbit: "2025",
          ),
          ItemBuku(
            kodeBuku: "003",
            namaBuku: "Sistem Gelap",
            penulis: "Moonton",
            tahunTerbit: "2019",
          ),
        ],
      ),
    );
  }
}

class ItemBuku extends StatelessWidget {
  final String? kodeBuku;
  final String? namaBuku;
  final String? penulis;
  final String? tahunTerbit;

  const ItemBuku({
    Key? key,
    this.kodeBuku,
    this.namaBuku,
    this.penulis,
    this.tahunTerbit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaBuku.toString()),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(penulis.toString()), Text(tahunTerbit.toString())],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BukuDetail(
              kodeBuku: kodeBuku,
              namaBuku: namaBuku,
              penulis: penulis,
              tahunTerbit: tahunTerbit,
            ),
          ),
        );
      },
    );
  }
}
