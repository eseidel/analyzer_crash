import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespace_runtime_constraints.dart';
import 'package:github/model/codespace_runtime_constraints.dart';

@immutable
class CodespaceRuntimeConstraints {
  CodespaceRuntimeConstraints({this.allowed_port_privacy_settings = const []});

  factory CodespaceRuntimeConstraints.fromJson(Map<String, dynamic> json) {
    return CodespaceRuntimeConstraints(
      allowed_port_privacy_settings:
          (json['allowed_port_privacy_settings'] as List?)?.cast<String>(),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespaceRuntimeConstraints? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodespaceRuntimeConstraints.fromJson(json);
  }

  final List<String>? allowed_port_privacy_settings;

  Map<String, dynamic> toJson() {
    return {'allowed_port_privacy_settings': allowed_port_privacy_settings};
  }

  @override
  int get hashCode => allowed_port_privacy_settings.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CodespaceRuntimeConstraints &&
        listsEqual(
          allowed_port_privacy_settings,
          other.allowed_port_privacy_settings,
        );
  }
}
