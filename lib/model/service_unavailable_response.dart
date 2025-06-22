import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/service_unavailable_response.dart';

@immutable
class ServiceUnavailableResponse {
  ServiceUnavailableResponse({this.code, this.message, this.documentation_url});

  factory ServiceUnavailableResponse.fromJson(Map<String, dynamic> json) {
    return ServiceUnavailableResponse(
      code: json['code'] as String?,
      message: json['message'] as String?,
      documentation_url: json['documentation_url'] as String?,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ServiceUnavailableResponse? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ServiceUnavailableResponse.fromJson(json);
  }

  final String? code;
  final String? message;
  final String? documentation_url;

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message,
      'documentation_url': documentation_url,
    };
  }

  @override
  int get hashCode => Object.hash(code, message, documentation_url);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ServiceUnavailableResponse &&
        code == other.code &&
        message == other.message &&
        documentation_url == other.documentation_url;
  }
}
