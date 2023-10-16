import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

//import 'package:firebase_core/firebase_core.dart';

class FirebaseDatabase {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('users');

  Future<void> addToCollection(
      {required String id,
      required String name,
      required String age,
      required String email,
      required String address,
      required String mobileNum}) async {
    await collection.doc(id).set({
      'Userid': id,
      'Name': name,
      'Age': age,
      'Email': email,
      'Address': address,
      'Mobile': mobileNum,
    });
    log('added successfully');
  }

  // Future<void> getDocuments(String userId) async {
  //   // List<String> dataList = [];
  //   //   await collection.get().then((querySnapshot) => {
  //   //         querySnapshot.docs.forEach((element) {
  //   //           dataList.add(element.data().toString());
  //   //           log(dataList.toString());
  //   //         })
  //   //       });

  //   //   log(dataList[0]);
  //   // final uId = FirebaseAuth.instance.currentUser.toString();
  //   final resp = await collection.doc(userId).get();

  //   log(resp.data().toString());
  //   log(resp['Email'].toString());

  //   // final instance = await collection.doc(uId).get();
  //   // log(instance['Name'].toString());
  // }

  static String getCurrentId() {
    final currentUser = FirebaseAuth.instance.currentUser;
    String userId = currentUser!.uid;
    return userId;
  }
}
