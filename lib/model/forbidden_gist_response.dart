import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/forbidden_gist_response.dart';
import 'package:github/model/forbidden_gist_response_block.dart';
import 'package:github/model/forbidden_gist_response.dart';
import 'package:github/model/forbidden_gist_response_block.dart';

@immutable
class ForbiddenGistResponse {
  ForbiddenGistResponse({this.block, this.message, this.documentation_url});

  factory ForbiddenGistResponse.fromJson(Map<String, dynamic> json) {
    return ForbiddenGistResponse(
      block: ForbiddenGistResponseBlock.maybeFromJson(
        json['block'] as Map<String, dynamic>?,
      ),
      message: json['message'] as String?,
      documentation_url: json['documentation_url'] as String?,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ForbiddenGistResponse? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ForbiddenGistResponse.fromJson(json);
  }

  final ForbiddenGistResponseBlock? block;
  final String? message;
  final String? documentation_url;

  Map<String, dynamic> toJson() {
    return {
      'block': block?.toJson(),
      'message': message,
      'documentation_url': documentation_url,
    };
  }

  @override
  int get hashCode => Object.hash(block, message, documentation_url);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ForbiddenGistResponse &&
        block == other.block &&
        message == other.message &&
        documentation_url == other.documentation_url;
  }
}
