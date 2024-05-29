import 'package:api/models/fuctions/fuctions.dart';
import 'package:api/models/fuctions/placeholder.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class addPostScreen extends StatefulWidget {
  const addPostScreen({super.key});

  @override
  State<addPostScreen> createState() => _addPostScreenState();
}

// ignore: camel_case_types
class _addPostScreenState extends State<addPostScreen> {
  List<Dataofapi> dataOfApi = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Post'),
      ),
      body: FutureBuilder(
          future: getApi(),
          builder: (context, snapShort) {
            if (snapShort.hasData) {
              return ListView.builder(
                  itemCount: snapShort.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(snapShort.data?[index].name.toString() ??
                            "there is no title"),
                        subtitle: Text(
                            snapShort.data?[index].colour.toString() ??
                                "there is no title"));
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postData();
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
