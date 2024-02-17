import 'package:flutter/material.dart';

class ImagePokes{

  ImagePokes(
    this.image,
    this.color,
  );
  final String image;
  final Color color;
}

class Pokes{
  Pokes(
    this.name,
    this.lastEvolition,
    this.hability,
    this.generation,
    this.punctuation,
    this.listImage,
    );
  
  final String name;
  final String lastEvolition;
  final String hability;
  final String generation;
  final int punctuation;
  final List<ImagePokes> listImage;
}