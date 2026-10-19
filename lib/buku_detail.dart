import 'package:flutter/material.dart';

class BukuDetail extends StatefulWidget {
  final String? kodeBuku;
  final String? namaBuku;
  final String? penulis;
  final String? tahunTerbit;

  const BukuDetail({
    Key? key,
    this.namaBuku,
    this.kodeBuku,
    this.penulis,
    this.tahunTerbit,
  }) : super(key: key);

  @override
  _BukuDetailState createState() => _BukuDetailState();
}

class _BukuDetailState extends State<BukuDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Buku')),
      body: Column(
        children: [
          Text('Kode Buku: ' + widget.kodeBuku.toString()),
          Text('Nama Buku: ' + widget.namaBuku.toString()),
          Text('Penulis: ' + widget.penulis.toString()),
          Text('Tahun Terbit: ' + widget.tahunTerbit.toString()),
        ],
      ),
    );
  }
}
