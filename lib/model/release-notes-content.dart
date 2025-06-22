import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/release-notes-content.dart';
import 'package:github/model/release-notes-content.dart';
@immutable
class Release-notes-content {
    Release-notes-content(
        { required this.name,required this.body,
         }
    );

    factory Release-notes-content.fromJson(Map<String, dynamic>
        json) {
        return Release-notes-content(
            name: json['name'] as String ,
            body: json['body'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Release-notes-content? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Release-notes-content.fromJson(json);
    }

    final String  name;
    final String  body;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'body': body,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          body,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Release-notes-content
            && name == other.name
            && body == other.body
        ;
    }
}
