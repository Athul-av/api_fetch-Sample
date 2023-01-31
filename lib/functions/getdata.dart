  

import 'dart:developer';

import 'package:api_sample/constant.dart';
import 'package:api_sample/model/usermodel.dart';
import 'package:http/http.dart' as http;
// class ApiService{

// Future<User?> getdata()async{

//   var uri = Uri.parse(ApiConstants().api+ApiConstants().endpoint.toString());

//   var response = await http.get(uri);

//   if(response.statusCode == 200){
//     var json = response.body;
//     return User.fromJson(json);
//   }
//   return null;
// }

// }
class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants().api + ApiConstants().endpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
