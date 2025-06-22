import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/verification.dart';

@immutable
class Verification {
  Verification({
    required this.verified,
    required this.reason,
    required this.payload,
    required this.signature,
    required this.verified_at,
  });

  factory Verification.fromJson(Map<String, dynamic> json) {
    return Verification(
      verified: (json['verified'] as bool),
      reason: json['reason'] as String,
      payload: json['payload'] as String,
      signature: json['signature'] as String,
      verified_at: json['verified_at'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Verification? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Verification.fromJson(json);
  }

  final bool verified;
  final String reason;
  final String payload;
  final String signature;
  final String verified_at;

  Map<String, dynamic> toJson() {
    return {
      'verified': verified,
      'reason': reason,
      'payload': payload,
      'signature': signature,
      'verified_at': verified_at,
    };
  }

  @override
  int get hashCode =>
      Object.hash(verified, reason, payload, signature, verified_at);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Verification &&
        verified == other.verified &&
        reason == other.reason &&
        payload == other.payload &&
        signature == other.signature &&
        verified_at == other.verified_at;
  }
}
