import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/delete_file_request_author.dart';
import 'package:github/model/repos/delete_file_request_author.dart';
@immutable
class Repos&#x2F;deleteFileRequestAuthor {
    Repos&#x2F;deleteFileRequestAuthor(
        {  this.name, this.email,
         }
    );

    factory Repos&#x2F;deleteFileRequestAuthor.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;deleteFileRequestAuthor(
            name: json['name'] as String? ,
            email: json['email'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;deleteFileRequestAuthor? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;deleteFileRequestAuthor.fromJson(json);
    }

    final  String? name;
    final  String? email;


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
        return other is Repos&#x2F;deleteFileRequestAuthor
            && name == other.name
            && email == other.email
        ;
    }
}
