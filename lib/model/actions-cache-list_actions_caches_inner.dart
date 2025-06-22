import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-cache-list_actions_caches_inner.dart';
import 'package:github/model/actions-cache-list_actions_caches_inner.dart';
@immutable
class Actions-cache-listActionsCachesInner {
    Actions-cache-listActionsCachesInner(
        {  this.id, this.ref, this.key, this.version, this.last_accessed_at, this.created_at, this.size_in_bytes,
         }
    );

    factory Actions-cache-listActionsCachesInner.fromJson(Map<String, dynamic>
        json) {
        return Actions-cache-listActionsCachesInner(
            id: (json['id'] as int?).toInt() ,
            ref: json['ref'] as String? ,
            key: json['key'] as String? ,
            version: json['version'] as String? ,
            last_accessed_at: maybeParseDateTime(json['last_accessed_at'] as String?) ,
            created_at: maybeParseDateTime(json['created_at'] as String?) ,
            size_in_bytes: (json['size_in_bytes'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-cache-listActionsCachesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-cache-listActionsCachesInner.fromJson(json);
    }

    final  int? id;
    final  String? ref;
    final  String? key;
    final  String? version;
    final  DateTime? last_accessed_at;
    final  DateTime? created_at;
    final  int? size_in_bytes;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'ref': ref,
            'key': key,
            'version': version,
            'last_accessed_at': last_accessed_at?.toIso8601String(),
            'created_at': created_at?.toIso8601String(),
            'size_in_bytes': size_in_bytes,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          ref,
          key,
          version,
          last_accessed_at,
          created_at,
          size_in_bytes,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-cache-listActionsCachesInner
            && id == other.id
            && ref == other.ref
            && key == other.key
            && version == other.version
            && last_accessed_at == other.last_accessed_at
            && created_at == other.created_at
            && size_in_bytes == other.size_in_bytes
        ;
    }
}
