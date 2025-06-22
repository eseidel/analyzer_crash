import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/file-commit_commit_author.dart';
import 'package:github/model/file-commit_commit_author.dart';
@immutable
class File-commitCommitAuthor {
    File-commitCommitAuthor(
        {  this.date, this.name, this.email,
         }
    );

    factory File-commitCommitAuthor.fromJson(Map<String, dynamic>
        json) {
        return File-commitCommitAuthor(
            date: json['date'] as String? ,
            name: json['name'] as String? ,
            email: json['email'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static File-commitCommitAuthor? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return File-commitCommitAuthor.fromJson(json);
    }

    final  String? date;
    final  String? name;
    final  String? email;


    Map<String, dynamic> toJson() {
        return {
            'date': date,
            'name': name,
            'email': email,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          date,
          name,
          email,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is File-commitCommitAuthor
            && date == other.date
            && name == other.name
            && email == other.email
        ;
    }
}
