import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git-tag_tagger.dart';
import 'package:github/model/git-tag_tagger.dart';
@immutable
class Git-tagTagger {
    Git-tagTagger(
        { required this.date,required this.email,required this.name,
         }
    );

    factory Git-tagTagger.fromJson(Map<String, dynamic>
        json) {
        return Git-tagTagger(
            date: json['date'] as String ,
            email: json['email'] as String ,
            name: json['name'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git-tagTagger? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git-tagTagger.fromJson(json);
    }

    final String  date;
    final String  email;
    final String  name;


    Map<String, dynamic> toJson() {
        return {
            'date': date,
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
        return other is Git-tagTagger
            && date == other.date
            && email == other.email
            && name == other.name
        ;
    }
}
