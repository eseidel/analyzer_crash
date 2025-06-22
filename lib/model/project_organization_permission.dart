import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/project_organization_permission.dart';

enum ProjectOrganizationPermission {
  read._('read'),
  write._('write'),
  admin._('admin'),
  none._('none');

  const ProjectOrganizationPermission._(this.value);

  factory ProjectOrganizationPermission.fromJson(String json) {
    return ProjectOrganizationPermission.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ProjectOrganizationPermission value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectOrganizationPermission? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ProjectOrganizationPermission.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
