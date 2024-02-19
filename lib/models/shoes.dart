import 'package:flutter/material.dart';

class ImagePokes{

  ImagePokes(
    this.image,
    this.color,
    this.namepoke
  );
  final String image;
  final Color color;
  final String namepoke;
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