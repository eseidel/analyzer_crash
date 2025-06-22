import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/key-simple.dart';
import 'package:github/model/key-simple.dart';
@immutable
class Key-simple {
    Key-simple(
        { required this.id,required this.key,
         }
    );

    factory Key-simple.fromJson(Map<String, dynamic>
        json) {
        return Key-simple(
            id: (json['id'] as int).toInt() ,
            key: json['key'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Key-simple? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Key-simple.fromJson(json);
    }

    final int  id;
    final String  key;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'key': key,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          key,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Key-simple
            && id == other.id
            && key == other.key
        ;
    }
}
