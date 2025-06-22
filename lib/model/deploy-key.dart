import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deploy-key.dart';
import 'package:github/model/deploy-key.dart';
@immutable
class Deploy-key {
    Deploy-key(
        { required this.id,required this.key,required this.url,required this.title,required this.verified,required this.created_at,required this.read_only, this.added_by, this.last_used, this.enabled,
         }
    );

    factory Deploy-key.fromJson(Map<String, dynamic>
        json) {
        return Deploy-key(
            id: (json['id'] as int).toInt() ,
            key: json['key'] as String ,
            url: json['url'] as String ,
            title: json['title'] as String ,
            verified: (json['verified'] as bool) ,
            created_at: json['created_at'] as String ,
            read_only: (json['read_only'] as bool) ,
            added_by: json['added_by'] as String? ,
            last_used: json['last_used'] as String? ,
            enabled: (json['enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deploy-key? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Deploy-key.fromJson(json);
    }

    final int  id;
    final String  key;
    final String  url;
    final String  title;
    final bool  verified;
    final String  created_at;
    final bool  read_only;
    final  String? added_by;
    final  String? last_used;
    final  bool? enabled;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'key': key,
            'url': url,
            'title': title,
            'verified': verified,
            'created_at': created_at,
            'read_only': read_only,
            'added_by': added_by,
            'last_used': last_used,
            'enabled': enabled,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          key,
          url,
          title,
          verified,
          created_at,
          read_only,
          added_by,
          last_used,
          enabled,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Deploy-key
            && id == other.id
            && key == other.key
            && url == other.url
            && title == other.title
            && verified == other.verified
            && created_at == other.created_at
            && read_only == other.read_only
            && added_by == other.added_by
            && last_used == other.last_used
            && enabled == other.enabled
        ;
    }
}
