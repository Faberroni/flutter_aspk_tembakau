import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SupplyInformation extends StatefulWidget {
  const SupplyInformation({Key? key}) : super(key: key);

  @override
  _SupplyInformationState createState() => _SupplyInformationState();
}

class _SupplyInformationState extends State<SupplyInformation> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('supply').snapshots();

  @override
  Widget build(BuildContext context) {
      return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LinearProgressIndicator();
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            final DateTime timeToDate = DateTime.fromMillisecondsSinceEpoch(
                data['waktu'].seconds * 1000);
            final String dateFormatted =
                DateFormat("EEE, M/d/y").format(timeToDate);

            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: SizedBox(
                height: 150,
                child: Card(
                  
                  elevation: 9.0,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(data['jumlah']),
                        title: Text(
                          data['nama_supply'],
                          style: const TextStyle(
                            fontSize: 21,
                          ),
                        ),
                        subtitle: Text(data['alamat']),
                      ),
                      Text(dateFormatted),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.delete_forever),
                            onPressed: () {
                              FirebaseFirestore.instance.collection("supply")
                               .doc(document.id)
                               .delete();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
