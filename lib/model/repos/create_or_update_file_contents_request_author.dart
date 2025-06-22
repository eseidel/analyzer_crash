import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_or_update_file_contents_request_author.dart';
import 'package:github/model/repos/create_or_update_file_contents_request_author.dart';
@immutable
class Repos&#x2F;createOrUpdateFileContentsRequestAuthor {
    Repos&#x2F;createOrUpdateFileContentsRequestAuthor(
        { required this.name,required this.email, this.date,
         }
    );

    factory Repos&#x2F;createOrUpdateFileContentsRequestAuthor.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createOrUpdateFileContentsRequestAuthor(
            name: json['name'] as String ,
            email: json['email'] as String ,
            date: json['date'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createOrUpdateFileContentsRequestAuthor? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createOrUpdateFileContentsRequestAuthor.fromJson(json);
    }

    final String  name;
    final String  email;
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
        return other is Repos&#x2F;createOrUpdateFileContentsRequestAuthor
            && name == other.name
            && email == other.email
            && date == other.date
        ;
    }
}
