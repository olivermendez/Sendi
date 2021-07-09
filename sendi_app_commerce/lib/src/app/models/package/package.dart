import 'package:flutter/material.dart';

class Package {
  Package(
      {this.userId,
      this.id,
      this.imageUrl,
      this.dimension,
      this.weight,
      this.details,
      this.recomendedFor});
  int? id;
  int? userId;
  Image? imageUrl;
  String? dimension;
  int? weight; // lb, kg
  String? details;
  String? recomendedFor; //Car, motor, truck

}
