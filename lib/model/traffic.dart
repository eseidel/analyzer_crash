import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/traffic.dart';
import 'package:github/model/traffic.dart';

@immutable
class Traffic {
  Traffic({
    required this.timestamp,
    required this.uniques,
    required this.count,
  });

  factory Traffic.fromJson(Map<String, dynamic> json) {
    return Traffic(
      timestamp: DateTime.parse(json['timestamp'] as String),
      uniques: (json['uniques'] as int).toInt(),
      count: (json['count'] as int).toInt(),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Traffic? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Traffic.fromJson(json);
  }

  final DateTime timestamp;
  final int uniques;
  final int count;

  Map<String, dynamic> toJson() {
    return {
      'timestamp': timestamp.toIso8601String(),
      'uniques': uniques,
      'count': count,
    };
  }

  @override
  int get hashCode => Object.hash(timestamp, uniques, count);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Traffic &&
        timestamp == other.timestamp &&
        uniques == other.uniques &&
        count == other.count;
  }
}
