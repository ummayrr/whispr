import 'package:cloud_firestore/cloud_firestore.dart';
import 'Contacts.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> uploadContact(Contact contact) async {
    try {
      await _firestore.collection('contacts').doc(contact.id).set(contact.toMap());
    } catch (e) {
      print('Error uploading contact: $e');
      throw e;
    }
  }
}
