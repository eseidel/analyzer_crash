import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
@immutable
class Secret-scanning-location-discussion-title {
    Secret-scanning-location-discussion-title(
        { required this.discussion_title_url,
         }
    );

    factory Secret-scanning-location-discussion-title.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-location-discussion-title(
            discussion_title_url: json['discussion_title_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-location-discussion-title? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-location-discussion-title.fromJson(json);
    }

    final String  discussion_title_url;


    Map<String, dynamic> toJson() {
        return {
            'discussion_title_url': discussion_title_url,
        };
    }

    @override
    int get hashCode =>
          discussion_title_url.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-location-discussion-title
            && discussion_title_url == other.discussion_title_url
        ;
    }
}
