import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/email.dart';
import 'package:github/model/email.dart';

@immutable
class Email {
  Email({
    required this.email,
    required this.primary,
    required this.verified,
    required this.visibility,
  });

  factory Email.fromJson(Map<String, dynamic> json) {
    return Email(
      email: json['email'] as String,
      primary: (json['primary'] as bool),
      verified: (json['verified'] as bool),
      visibility: json['visibility'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Email? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Email.fromJson(json);
  }

  final String email;
  final bool primary;
  final bool verified;
  final String visibility;

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'primary': primary,
      'verified': verified,
      'visibility': visibility,
    };
  }

  @override
  int get hashCode => Object.hash(email, primary, verified, visibility);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Email &&
        email == other.email &&
        primary == other.primary &&
        verified == other.verified &&
        visibility == other.visibility;
  }
}
