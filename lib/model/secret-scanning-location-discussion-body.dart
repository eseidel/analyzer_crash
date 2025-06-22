import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
@immutable
class Secret-scanning-location-discussion-body {
    Secret-scanning-location-discussion-body(
        { required this.discussion_body_url,
         }
    );

    factory Secret-scanning-location-discussion-body.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-location-discussion-body(
            discussion_body_url: json['discussion_body_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-location-discussion-body? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-location-discussion-body.fromJson(json);
    }

    final String  discussion_body_url;


    Map<String, dynamic> toJson() {
        return {
            'discussion_body_url': discussion_body_url,
        };
    }

    @override
    int get hashCode =>
          discussion_body_url.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-location-discussion-body
            && discussion_body_url == other.discussion_body_url
        ;
    }
}
