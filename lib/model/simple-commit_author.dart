import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/simple-commit_author.dart';
import 'package:github/model/simple-commit_author.dart';
@immutable
class Simple-commitAuthor {
    Simple-commitAuthor(
        { required this.name,required this.email,
         }
    );

    factory Simple-commitAuthor.fromJson(Map<String, dynamic>
        json) {
        return Simple-commitAuthor(
            name: json['name'] as String ,
            email: json['email'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Simple-commitAuthor? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Simple-commitAuthor.fromJson(json);
    }

    final String  name;
    final String  email;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'email': email,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          email,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Simple-commitAuthor
            && name == other.name
            && email == other.email
        ;
    }
}
