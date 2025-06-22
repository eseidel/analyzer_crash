import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
@immutable
class Nullable-git-user {
    Nullable-git-user(
        {  this.name, this.email, this.date,
         }
    );

    factory Nullable-git-user.fromJson(Map<String, dynamic>
        json) {
        return Nullable-git-user(
            name: json['name'] as String? ,
            email: json['email'] as String? ,
            date: json['date'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-git-user? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Nullable-git-user.fromJson(json);
    }

    final  String? name;
    final  String? email;
    final  String? date;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'email': email,
            'date': date,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          email,
          date,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Nullable-git-user
            && name == other.name
            && email == other.email
            && date == other.date
        ;
    }
}
