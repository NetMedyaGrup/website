// lib/models/service.dart
import 'package:flutter/material.dart';

class Service {
  final IconData icon;
  final String title;
  final String shortDescription;
  final Widget page; // Burası yeni eklendi: tıklanınca açılacak hedef sayfa

  const Service({
    required this.icon,
    required this.title,
    required this.shortDescription,
    required this.page,
  });
}
