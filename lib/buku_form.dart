import 'package:flutter/material.dart';
import 'package:flutter_application_1/buku_detail.dart';

class BukuForm extends StatefulWidget {
  const BukuForm({Key? key}) : super(key: key);

  @override
  _BukuFormState createState() => _BukuFormState();
}

class _BukuFormState extends State<BukuForm> {
  final _kodeBukuTextboxController = TextEditingController();
  final _namaBukuTextboxController = TextEditingController();
  final _penulisTextboxController = TextEditingController();
  final _tahunTerbitTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Buku')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeBuku(),
            _textboxNamaBuku(),
            _textboxPenulis(),
            _textboxTahunTerbit(),
            _tombolsimpan(),
          ],
        ),
      ),
    );
  }

  _tombolsimpan() {
    return ElevatedButton(
      onPressed: () {
        String kodeBuku = _kodeBukuTextboxController.text;
        String namaBuku = _namaBukuTextboxController.text;
        String penulis = _penulisTextboxController.text;
        String tahunTerbit = _tahunTerbitTextboxController.text;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: ((context) => BukuDetail(
              kodeBuku: kodeBuku,
              namaBuku: namaBuku,
              penulis: penulis,
              tahunTerbit: tahunTerbit,
            )),
          ),
        );
      },
      child: const Text('Simpan'),
    );
  }

  _textboxKodeBuku() {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Buku"),
      controller: _kodeBukuTextboxController,
    );
  }

  _textboxNamaBuku() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Buku"),
      controller: _namaBukuTextboxController,
    );
  }

  _textboxPenulis() {
    return TextField(
      decoration: const InputDecoration(labelText: "Penulis"),
      controller: _penulisTextboxController,
    );
  }

  _textboxTahunTerbit() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Terbit"),
      controller: _tahunTerbitTextboxController,
    );
  }
}
