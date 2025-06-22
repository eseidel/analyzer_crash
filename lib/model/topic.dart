import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/topic.dart';
import 'package:github/model/topic.dart';

@immutable
class Topic {
  Topic({this.names = const []});

  factory Topic.fromJson(Map<String, dynamic> json) {
    return Topic(names: (json['names'] as List).cast<String>());
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Topic? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Topic.fromJson(json);
  }

  final List<String> names;

  Map<String, dynamic> toJson() {
    return {'names': names};
  }

  @override
  int get hashCode => names.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Topic && listsEqual(names, other.names);
  }
}
