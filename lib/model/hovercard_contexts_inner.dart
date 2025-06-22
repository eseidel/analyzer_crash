import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/hovercard_contexts_inner.dart';
import 'package:github/model/hovercard_contexts_inner.dart';

@immutable
class HovercardContextsInner {
  HovercardContextsInner({required this.message, required this.octicon});

  factory HovercardContextsInner.fromJson(Map<String, dynamic> json) {
    return HovercardContextsInner(
      message: json['message'] as String,
      octicon: json['octicon'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static HovercardContextsInner? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return HovercardContextsInner.fromJson(json);
  }

  final String message;
  final String octicon;

  Map<String, dynamic> toJson() {
    return {'message': message, 'octicon': octicon};
  }

  @override
  int get hashCode => Object.hash(message, octicon);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HovercardContextsInner &&
        message == other.message &&
        octicon == other.octicon;
  }
}
