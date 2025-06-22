import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-commit_committer.dart';
import 'package:github/model/git-commit_committer.dart';
@immutable
class Git-commitCommitter {
    Git-commitCommitter(
        { required this.date,required this.email,required this.name,
         }
    );

    factory Git-commitCommitter.fromJson(Map<String, dynamic>
        json) {
        return Git-commitCommitter(
            date: DateTime.parse(json['date'] as String),
            email: json['email'] as String ,
            name: json['name'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-commitCommitter? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-commitCommitter.fromJson(json);
    }

    final DateTime  date;
    final String  email;
    final String  name;


    Map<String, dynamic> toJson() {
        return {
            'date': date.toIso8601String(),
            'email': email,
            'name': name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          date,
          email,
          name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git-commitCommitter
            && date == other.date
            && email == other.email
            && name == other.name
        ;
    }
}
