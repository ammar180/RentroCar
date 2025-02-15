import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

int calculateDaysCount(
  int startDateInSeconds,
  int endDateInSeconds,
) {
  // Convert the timestamps from seconds to DateTime objects
  DateTime startDate =
      DateTime.fromMillisecondsSinceEpoch(startDateInSeconds * 1000);
  DateTime endDate =
      DateTime.fromMillisecondsSinceEpoch(endDateInSeconds * 1000);

  // Calculate the difference in days
  Duration difference = endDate.difference(startDate);
  int daysCount = difference.inDays;

  return daysCount;
}
