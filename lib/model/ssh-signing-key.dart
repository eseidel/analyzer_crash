import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/ssh-signing-key.dart';
import 'package:github/model/ssh-signing-key.dart';
@immutable
class Ssh-signing-key {
    Ssh-signing-key(
        { required this.key,required this.id,required this.title,required this.created_at,
         }
    );

    factory Ssh-signing-key.fromJson(Map<String, dynamic>
        json) {
        return Ssh-signing-key(
            key: json['key'] as String ,
            id: (json['id'] as int).toInt() ,
            title: json['title'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Ssh-signing-key? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Ssh-signing-key.fromJson(json);
    }

    final String  key;
    final int  id;
    final String  title;
    final DateTime  created_at;


    Map<String, dynamic> toJson() {
        return {
            'key': key,
            'id': id,
            'title': title,
            'created_at': created_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          key,
          id,
          title,
          created_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Ssh-signing-key
            && key == other.key
            && id == other.id
            && title == other.title
            && created_at == other.created_at
        ;
    }
}
