import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-public-key.dart';
import 'package:github/model/actions-public-key.dart';
@immutable
class Actions-public-key {
    Actions-public-key(
        { required this.key_id,required this.key, this.id, this.url, this.title, this.created_at,
         }
    );

    factory Actions-public-key.fromJson(Map<String, dynamic>
        json) {
        return Actions-public-key(
            key_id: json['key_id'] as String ,
            key: json['key'] as String ,
            id: (json['id'] as int?).toInt() ,
            url: json['url'] as String? ,
            title: json['title'] as String? ,
            created_at: json['created_at'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-public-key? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-public-key.fromJson(json);
    }

    final String  key_id;
    final String  key;
    final  int? id;
    final  String? url;
    final  String? title;
    final  String? created_at;


    Map<String, dynamic> toJson() {
        return {
            'key_id': key_id,
            'key': key,
            'id': id,
            'url': url,
            'title': title,
            'created_at': created_at,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          key_id,
          key,
          id,
          url,
          title,
          created_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-public-key
            && key_id == other.key_id
            && key == other.key
            && id == other.id
            && url == other.url
            && title == other.title
            && created_at == other.created_at
        ;
    }
}
