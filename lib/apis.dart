import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Apis{
  //final Future<FirebaseApp> _fApp = Firebase.initializeApp();

  //for authentication 
  static FirebaseAuth auth = FirebaseAuth.instance;

  //for accessing cloud firestore database
  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  
}