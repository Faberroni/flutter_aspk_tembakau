import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aspk_tembakau/constants/colors.dart';
import 'package:flutter_aspk_tembakau/functions/product_added.dart';
import 'package:flutter_aspk_tembakau/functions/show_error_dialogue.dart';

class NewInventoryPage extends StatefulWidget {
  const NewInventoryPage({Key? key}) : super(key: key);

  @override
  State<NewInventoryPage> createState() => _NewInventoryPageState();
}

class _NewInventoryPageState extends State<NewInventoryPage> {
  CollectionReference produk = FirebaseFirestore.instance.collection('produk');

  late final TextEditingController nameController;
  late final TextEditingController quantityController;
  late final TextEditingController descriptionController;
  late final TextEditingController priceController;

  @override
  void initState() {
    priceController = TextEditingController();
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
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Future<void> addProduct() {
      // Call the user's CollectionReference to add a new product
      return produk.add({
        'harga': priceController.text,
        'nama_produk': nameController.text,
        'jumlah': quantityController.text,
        'deskripsi': descriptionController.text,
        'waktu': DateTime.now(),
      }).then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
          productAdded(context, 'produk ditambahkan'),
        );
        Navigator.of(context).pop();
      }).catchError((error) {
        showErrorDialog(context, error);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Item Baru!'),
        backgroundColor: Colors.white,
      ),
      extendBody: true,
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  
                  padding: const EdgeInsets.all(2.0),
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: myGreen.shade300,
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(10.0),
                      labelText: 'Nama Produk',
                    ),
                    controller: nameController,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  
                  padding: const EdgeInsets.all(2.0),
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: myGreen.shade300,
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(10.0),
                      labelText: 'Jumlah Produk',
                    ),
                    controller: quantityController,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.12,
                  padding: const EdgeInsets.all(2.0),
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: myGreen.shade300,
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(10.0),
                      labelText: 'Harga Produk',
                    ),
                    controller: priceController,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.12,
                  padding: const EdgeInsets.all(2.0),
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: myGreen.shade300,
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(10.0),
                      labelText: 'Deskripsi Produk',
                    ),
                    controller: descriptionController,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(myGreen),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        onPressed: addProduct,
                        child: const Text('Tambahkan Produk'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
