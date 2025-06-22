import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/forbidden_gist_response_block.dart';
import 'package:github/model/forbidden_gist_response_block.dart';

@immutable
class ForbiddenGistResponseBlock {
  ForbiddenGistResponseBlock({this.reason, this.created_at, this.html_url});

  factory ForbiddenGistResponseBlock.fromJson(Map<String, dynamic> json) {
    return ForbiddenGistResponseBlock(
      reason: json['reason'] as String?,
      created_at: json['created_at'] as String?,
      html_url: json['html_url'] as String?,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ForbiddenGistResponseBlock? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ForbiddenGistResponseBlock.fromJson(json);
  }

  final String? reason;
  final String? created_at;
  final String? html_url;

  Map<String, dynamic> toJson() {
    return {'reason': reason, 'created_at': created_at, 'html_url': html_url};
  }

  @override
  int get hashCode => Object.hash(reason, created_at, html_url);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ForbiddenGistResponseBlock &&
        reason == other.reason &&
        created_at == other.created_at &&
        html_url == other.html_url;
  }
}
