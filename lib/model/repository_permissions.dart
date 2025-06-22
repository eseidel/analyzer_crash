import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/repository_permissions.dart';

@immutable
class RepositoryPermissions {
  RepositoryPermissions({
    required this.admin,
    required this.pull,
    this.triage,
    required this.push,
    this.maintain,
  });

  factory RepositoryPermissions.fromJson(Map<String, dynamic> json) {
    return RepositoryPermissions(
      admin: (json['admin'] as bool),
      pull: (json['pull'] as bool),
      triage: (json['triage'] as bool?),
      push: (json['push'] as bool),
      maintain: (json['maintain'] as bool?),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryPermissions? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryPermissions.fromJson(json);
  }

  final bool admin;
  final bool pull;
  final bool? triage;
  final bool push;
  final bool? maintain;

  Map<String, dynamic> toJson() {
    return {
      'admin': admin,
      'pull': pull,
      'triage': triage,
      'push': push,
      'maintain': maintain,
    };
  }

  @override
  int get hashCode => Object.hash(admin, pull, triage, push, maintain);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryPermissions &&
        admin == other.admin &&
        pull == other.pull &&
        triage == other.triage &&
        push == other.push &&
        maintain == other.maintain;
  }
}
