import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
@immutable
class Nullable-simple-commitCommitter {
    Nullable-simple-commitCommitter(
        { required this.name,required this.email,
         }
    );

    factory Nullable-simple-commitCommitter.fromJson(Map<String, dynamic>
        json) {
        return Nullable-simple-commitCommitter(
            name: json['name'] as String ,
            email: json['email'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-simple-commitCommitter? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Nullable-simple-commitCommitter.fromJson(json);
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
        return other is Nullable-simple-commitCommitter
            && name == other.name
            && email == other.email
        ;
    }
}
