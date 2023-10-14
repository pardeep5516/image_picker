import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:image_pick/src/models/image_model.dart';
import 'package:image_pick/src/widgets/image_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  List<ImageModel> images = [];
  void fetchImage() async {
    counter++;
    final response = await get(
        Uri.parse("https://jsonplaceholder.typicode.com/photos/$counter"));
    final imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(image: images),
        appBar: AppBar(
          title: const Text("Image Picker"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
