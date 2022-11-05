import 'package:flutter/material.dart';
import 'package:lam3a/Screens/Cars.dart';
import 'package:lam3a/Screens/Home.dart';
import 'package:lam3a/Screens/Profile/Profile.dart';
import 'package:lam3a/Screens/Reservation.dart';

List headers=[
  "الحساب",
  "الحجز",
  "المركبات",
  "الرئيسيه",
];

List profile=[
  "محفظتي",
  "الاعدادات",
  "مساعده",
  "خروج",
];
List picon=[
  Icons.account_balance_wallet_outlined,
  Icons.settings,
  Icons.help_outline,
  Icons.logout
];

List pages=[
  Profile(),
  Reservation(),
  Cars(),
  Home(),
];
