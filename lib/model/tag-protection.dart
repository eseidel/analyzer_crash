import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/tag-protection.dart';
import 'package:github/model/tag-protection.dart';
@immutable
class Tag-protection {
    Tag-protection(
        {  this.id, this.created_at, this.updated_at, this.enabled,required this.pattern,
         }
    );

    factory Tag-protection.fromJson(Map<String, dynamic>
        json) {
        return Tag-protection(
            id: (json['id'] as int?).toInt() ,
            created_at: json['created_at'] as String? ,
            updated_at: json['updated_at'] as String? ,
            enabled: (json['enabled'] as bool?) ,
            pattern: json['pattern'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Tag-protection? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Tag-protection.fromJson(json);
    }

    final  int? id;
    final  String? created_at;
    final  String? updated_at;
    final  bool? enabled;
    final String  pattern;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'created_at': created_at,
            'updated_at': updated_at,
            'enabled': enabled,
            'pattern': pattern,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          created_at,
          updated_at,
          enabled,
          pattern,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Tag-protection
            && id == other.id
            && created_at == other.created_at
            && updated_at == other.updated_at
            && enabled == other.enabled
            && pattern == other.pattern
        ;
    }
}
