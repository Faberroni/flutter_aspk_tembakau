import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aspk_tembakau/functions/show_error_dialogue.dart';

class NewInventoryPage extends StatefulWidget {
  const NewInventoryPage({Key? key}) : super(key: key);

  @override
  State<NewInventoryPage> createState() => _NewInventoryPageState();
}

class _NewInventoryPageState extends State<NewInventoryPage> {
  CollectionReference firestoredb =
      FirebaseFirestore.instance.collection('produk');

  late final TextEditingController nameController;
  late final TextEditingController quantityController;
  late final TextEditingController descriptionController;

  @override
  void initState() {
    nameController = TextEditingController();
    quantityController = TextEditingController();
    descriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    quantityController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> addProduct() {
      // Call the user's CollectionReference to add a new product
      return firestoredb.add({
        'nama_produk': nameController.text,
        'jumlah': quantityController.text,
        'deskripsi': descriptionController.text,
        'waktu': DateTime.now(),
      }).then((value) {
        Navigator.of(context).pop(context);
      }).catchError((error) {
        return showErrorDialogFirestore(context, 'Terjadi Kesalahan $error');
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Produk Baru'),
      ),
      body: Column(
        children: <Widget>[
          const Text('Isi formulir produk baru!'),
          Expanded(
            child: TextField(
              autocorrect: true,
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'Nama Produk',
              ),
              controller: nameController,
            ),
          ),
          Expanded(
            child: TextField(
              autocorrect: true,
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'Jumlah Produk',
              ),
              controller: quantityController,
            ),
          ),
          Expanded(
            child: TextField(
              autocorrect: true,
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'Deskripsi Produk',
              ),
              controller: descriptionController,
            ),
          ),
          ElevatedButton(
              onPressed: addProduct, child: const Text('Tambahkan Produk'))
        ],
      ),
    );
  }
}
