import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aspk_tembakau/constants/colors.dart';
import 'package:flutter_aspk_tembakau/functions/product_added.dart';
import 'package:flutter_aspk_tembakau/functions/show_error_dialogue.dart';

class NewSupplyPage extends StatefulWidget {
  const NewSupplyPage({Key? key}) : super(key: key);

  @override
  State<NewSupplyPage> createState() => _NewSupplyPageState();
}

class _NewSupplyPageState extends State<NewSupplyPage> {
  CollectionReference supply = FirebaseFirestore.instance.collection('supply');

  late final TextEditingController nameController;
  late final TextEditingController quantityController;
  late final TextEditingController addressController;


  @override
  void initState() {
    nameController = TextEditingController();
    quantityController = TextEditingController();
    addressController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    quantityController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Future<void> addProduct() {
      // Call the user's CollectionReference to add a new product
      return supply.add({
        'nama_supply': nameController.text,
        'jumlah': quantityController.text,
        'alamat': addressController.text,
        'waktu': DateTime.now(),
      }).then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
          productAdded(context, 'supply ditambahkan'),
        );
        Navigator.of(context).pop();
      }).catchError((error) {
        showErrorDialog(context, error);
      });
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
                      labelText: 'Nama supply',
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
                      labelText: 'Jumlah supply',
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
                      labelText: 'Alamat supply',
                    ),
                    controller: addressController,
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
                        child: const Text('Tambahkan supply'),
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
