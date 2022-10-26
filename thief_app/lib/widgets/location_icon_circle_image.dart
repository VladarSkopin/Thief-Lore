import 'package:flutter/material.dart';

class LocationIconCircleImage extends StatelessWidget {

  final double imageRadius;
  final ImageProvider? imageProvider;

  const LocationIconCircleImage({Key? key, this.imageProvider, this.imageRadius = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blueAccent,
      radius: imageRadius,
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}