import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/environment-approvals_environments_inner.dart';
import 'package:github/model/environment-approvals_environments_inner.dart';
@immutable
class Environment-approvalsEnvironmentsInner {
    Environment-approvalsEnvironmentsInner(
        {  this.id, this.node_id, this.name, this.url, this.html_url, this.created_at, this.updated_at,
         }
    );

    factory Environment-approvalsEnvironmentsInner.fromJson(Map<String, dynamic>
        json) {
        return Environment-approvalsEnvironmentsInner(
            id: (json['id'] as int?).toInt() ,
            node_id: json['node_id'] as String? ,
            name: json['name'] as String? ,
            url: json['url'] as String? ,
            html_url: json['html_url'] as String? ,
            created_at: maybeParseDateTime(json['created_at'] as String?) ,
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Environment-approvalsEnvironmentsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Environment-approvalsEnvironmentsInner.fromJson(json);
    }

    final  int? id;
    final  String? node_id;
    final  String? name;
    final  String? url;
    final  String? html_url;
    final  DateTime? created_at;
    final  DateTime? updated_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'name': name,
            'url': url,
            'html_url': html_url,
            'created_at': created_at?.toIso8601String(),
            'updated_at': updated_at?.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          name,
          url,
          html_url,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Environment-approvalsEnvironmentsInner
            && id == other.id
            && node_id == other.node_id
            && name == other.name
            && url == other.url
            && html_url == other.html_url
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
