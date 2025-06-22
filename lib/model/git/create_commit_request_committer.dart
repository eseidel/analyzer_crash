import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/create_commit_request_committer.dart';
import 'package:github/model/git/create_commit_request_committer.dart';
@immutable
class Git&#x2F;createCommitRequestCommitter {
    Git&#x2F;createCommitRequestCommitter(
        {  this.name, this.email, this.date,
         }
    );

    factory Git&#x2F;createCommitRequestCommitter.fromJson(Map<String, dynamic>
        json) {
        return Git&#x2F;createCommitRequestCommitter(
            name: json['name'] as String? ,
            email: json['email'] as String? ,
            date: maybeParseDateTime(json['date'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;createCommitRequestCommitter? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;createCommitRequestCommitter.fromJson(json);
    }

    final  String? name;
    final  String? email;
    final  DateTime? date;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'email': email,
            'date': date?.toIso8601String(),
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
        return other is Git&#x2F;createCommitRequestCommitter
            && name == other.name
            && email == other.email
            && date == other.date
        ;
    }
}
