import 'package:flutter/material.dart';
import 'package:image_pick/src/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> image;
  const ImageList({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            children: [
              Image.network(image[index].url),
              Text(
                image[index].title,
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
      itemCount: image.length,
    );
  }
}
