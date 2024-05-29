import 'dart:convert';
import 'package:api/models/fuctions/placeholder.dart';
import 'package:http/http.dart' as http;

List<Dataofapi> datalist = [];
//  getdata fuction
Future<List<Dataofapi>> getApi() async {

    var url = Uri.parse(
        "https://crudcrud.com/api/d16924e7bf5a448389a05b5f1928e171/unicorns");
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body);
    datalist.clear();

    for (var eachMap in responseBody) {
      datalist.add(Dataofapi.fromJson(eachMap));
    }
    return datalist;
  
}

Future postData() async {
  // 200--success, 400, 404, 500
  try {
    var url = Uri.parse(
        "https://crudcrud.com/api/d16924e7bf5a448389a05b5f1928e171/unicorns");
    await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'age': '1', 'colour': 'white', 'sId': 'mavia', 'name': 'irfan'}),
    );
    print(
      await http.read(
        Uri.https(
            "https://crudcrud.com/api/d16924e7bf5a448389a05b5f1928e171/unicorns"),
      ),
    );
  } catch (e) {
    print(e);
  }
}
