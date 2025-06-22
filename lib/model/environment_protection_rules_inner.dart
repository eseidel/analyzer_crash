import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/environment_protection_rules_inner.dart';
import 'package:github/model/environment_protection_rules_inner.dart';

@immutable
class EnvironmentProtectionRulesInner {
  EnvironmentProtectionRulesInner({
    required this.id,
    required this.node_id,
    required this.type,
  });

  factory EnvironmentProtectionRulesInner.fromJson(Map<String, dynamic> json) {
    return EnvironmentProtectionRulesInner(
      id: (json['id'] as int).toInt(),
      node_id: json['node_id'] as String,
      type: json['type'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static EnvironmentProtectionRulesInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return EnvironmentProtectionRulesInner.fromJson(json);
  }

  final int id;
  final String node_id;
  final String type;

  Map<String, dynamic> toJson() {
    return {'id': id, 'node_id': node_id, 'type': type};
  }

  @override
  int get hashCode => Object.hash(id, node_id, type);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EnvironmentProtectionRulesInner &&
        id == other.id &&
        node_id == other.node_id &&
        type == other.type;
  }
}
