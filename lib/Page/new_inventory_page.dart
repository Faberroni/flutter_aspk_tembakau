import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aspk_tembakau/constants/colors.dart';

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
      return produk
          .add({
            'harga':priceController.text,
            'nama_produk': nameController.text,
            'jumlah': quantityController.text,
            'deskripsi': descriptionController.text,
            'waktu': DateTime.now(),
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));

    }

    return Scaffold(
      extendBody: true,
      backgroundColor: myGreen,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Isi formulir produk baru!'),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
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
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
    );
  }
}
