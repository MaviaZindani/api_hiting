import 'dart:convert';
import 'package:api/models/fuctions/placeholder.dart';
import 'package:http/http.dart' as http;

//  getdata fuction

Future<List<Dataofapi>> getApi() async {
  List<Dataofapi> postlist = [];
  var url = Uri.parse(
      "https://crudcrud.com/api/e26d72a0604f473593a774037a321519/unicorns");
  var response = await http.get(url);
  var responseBody = jsonDecode(response.body);

  for (var eachMap in responseBody) {
    postlist.add(Dataofapi.fromJson(eachMap));
  }
  return postlist;
}

Future postData() async {
  // 200--success, 400, 404, 500
  try {
    var url = Uri.parse(
        "https://crudcrud.com/api/e26d72a0604f473593a774037a321519/unicorns");
   await http.post(
      url, 
      headers: {
        'Content-Type': 'application/json'
      },
      body: jsonEncode({
      'age': 1.toString(),
      'colour': 'white',
      'sId': 'mavia',
      'name': 'irfan'
    }),
    );
    print(await http.read(Uri.https("https://crudcrud.com/api/e26d72a0604f473593a774037a321519/unicorns"),),);
  } catch (e) {
    print(e);
  }
}
