import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
import 'package:github/model/deployment-branch-policy.dart';
import 'package:github/model/deployment-branch-policy_type.dart';
@immutable
class Deployment-branch-policy {
    Deployment-branch-policy(
        {  this.id, this.node_id, this.name, this.type,
         }
    );

    factory Deployment-branch-policy.fromJson(Map<String, dynamic>
        json) {
        return Deployment-branch-policy(
            id: (json['id'] as int?).toInt() ,
            node_id: json['node_id'] as String? ,
            name: json['name'] as String? ,
            type: Deployment-branch-policyType.maybeFromJson(json['type'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deployment-branch-policy? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Deployment-branch-policy.fromJson(json);
    }

    final  int? id;
    final  String? node_id;
    final  String? name;
    final  Deployment-branch-policyType? type;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'name': name,
            'type': type?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          name,
          type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Deployment-branch-policy
            && id == other.id
            && node_id == other.node_id
            && name == other.name
            && type == other.type
        ;
    }
}
