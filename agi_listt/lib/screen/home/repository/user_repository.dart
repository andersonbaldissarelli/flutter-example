import 'package:agi_listt/shared/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository{

  Firestore get instance => Firestore.instance;

  Future<List<String>> getUser({String userId}) async{
    var response = await instance.collection('users').document(userId).collection('tasks').getDocuments();
    return response.documents.map((i) => i.data['description'] as String).toList();
  }

  Future<String> getName({String userId}) async{
    //User user = UserModel.fromSnapshot(await instance.collection('users').document(userId).get());
    //return user.name;
  }
}