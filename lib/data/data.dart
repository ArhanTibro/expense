import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionData = [
  {
    'icon': const FaIcon(FontAwesomeIcons.burger, color: Colors.white),
    'color': Colors.yellow[700],
    'name': 'Food',
    'totalAmount': '-\2400',
    'date': 'today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.bagShopping, color: Colors.white),
    'color': Colors.purple[700],
    'name': 'Shopping',
    'totalAmount': '-\1600',
    'date': 'today',
  },
  {
    'icon':
        const FaIcon(FontAwesomeIcons.heartCircleCheck, color: Colors.white),
    'color': Colors.green[700],
    'name': 'Health',
    'totalAmount': '-\1000',
    'date': 'Yesterday',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.bus, color: Colors.white),
    'color': Colors.blue[700],
    'name': 'Travel',
    'totalAmount': '-\1800',
    'date': 'Yesterday',
  },
];
