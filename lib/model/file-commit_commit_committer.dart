import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/file-commit_commit_committer.dart';
import 'package:github/model/file-commit_commit_committer.dart';
@immutable
class File-commitCommitCommitter {
    File-commitCommitCommitter(
        {  this.date, this.name, this.email,
         }
    );

    factory File-commitCommitCommitter.fromJson(Map<String, dynamic>
        json) {
        return File-commitCommitCommitter(
            date: json['date'] as String? ,
            name: json['name'] as String? ,
            email: json['email'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static File-commitCommitCommitter? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return File-commitCommitCommitter.fromJson(json);
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
        return other is File-commitCommitCommitter
            && date == other.date
            && name == other.name
            && email == other.email
        ;
    }
}
