import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit-search-result-item_commit_author.dart';
import 'package:github/model/commit-search-result-item_commit_author.dart';
@immutable
class Commit-search-result-itemCommitAuthor {
    Commit-search-result-itemCommitAuthor(
        { required this.name,required this.email,required this.date,
         }
    );

    factory Commit-search-result-itemCommitAuthor.fromJson(Map<String, dynamic>
        json) {
        return Commit-search-result-itemCommitAuthor(
            name: json['name'] as String ,
            email: json['email'] as String ,
            date: DateTime.parse(json['date'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Commit-search-result-itemCommitAuthor? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Commit-search-result-itemCommitAuthor.fromJson(json);
    }

    final String  name;
    final String  email;
    final DateTime  date;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'email': email,
            'date': date.toIso8601String(),
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
        return other is Commit-search-result-itemCommitAuthor
            && name == other.name
            && email == other.email
            && date == other.date
        ;
    }
}
