import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-public-key.dart';
import 'package:github/model/dependabot-public-key.dart';
@immutable
class Dependabot-public-key {
    Dependabot-public-key(
        { required this.key_id,required this.key,
         }
    );

    factory Dependabot-public-key.fromJson(Map<String, dynamic>
        json) {
        return Dependabot-public-key(
            key_id: json['key_id'] as String ,
            key: json['key'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-public-key? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-public-key.fromJson(json);
    }

    final String  key_id;
    final String  key;


    Map<String, dynamic> toJson() {
        return {
            'key_id': key_id,
            'key': key,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          key_id,
          key,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot-public-key
            && key_id == other.key_id
            && key == other.key
        ;
    }
}
